## util.R ####

#' Check if a path is valid
#' @param path folder or filepath
check_dir_exists <- function(path){
  if(!dir.exists(path)){
    stop(paste("Could not find the following path:", path))
  }
}

#' Check if required columns are present
#' @param df dataframe or datatable object
#' @param cols vector of column names to check
#' @param stop boolean to stop the script if check fails
check_cols <- function(df, cols, fail=T){
  matched_cols <- intersect(colnames(df), cols)
  missing_cols <- cols[!(cols %in% matched_cols)]
  if(length(missing_cols)>0){
    df_name <- deparse(substitute(df))
    error <- paste0("The following columns are required in ", df_name, ": ", paste(missing_cols, sep=","))
    if(fail){
      stop(error)
    } else {
      print(error)
      return(FALSE)
    }
  } else {
    return(TRUE)
  }
}

#' Load a ReEDS run file
#' @param path path to file to load
#' @param run_name name of run
load_reeds_file <- function(path, run_name, header){
  filename <- basename(path)
  tryCatch(
    {
      df <- data.table::fread(path, header=header)
      cat(paste("Loaded", basename(path), "for", run_name), sep="\n")
      df$run <- run_name
      return(df)
    },
    error=function(cond)
    {
      cat(paste("Error reading", basename(path), "for", run_name), sep="\n")
      df <- data.table::data.table(run=factor(), data=numeric())
      return(df)
    }
  )
}

get_output_param_units <- function(run_folder, resultname){
  # read report_params.csv
  report_path <- file.path(run_folder, "reeds", "core", "terminus", "report_params.csv")
  if (file.exists(report_path)){
    report_params <- read.csv(report_path, comment.char = "#")
  } else{
    return(NULL)
  }
  # reformat
  report_params$filename <- gsub("\\(.*?\\)", "", report_params$param)
  report_params$filename <- ifelse(report_params$output_rename=="",
                                   report_params$filename,
                                   report_params$output_rename
  )
  # identify units from relevant row
  output <- report_params[report_params$filename==resultname,]
  if(length(output)> 0){
    file_units <- output[, "units"]
    newcolname <- paste(resultname, file_units, sep="_")
  } else{
  # if no match can be found return the original result name
    newcolname <- resultname
  }
  return(newcolname)
}

#' Rename Val column using report_params metadata
#'
#' Renames the output value column in a data table based on units from
#' report_params.csv collected across runs.
#'
#' @param df_out data table with output data
#' @param newcolname_all vector of new column names collected from runs
#' @param nruns number of runs expected
#' @return data table with renamed column (if applicable)
rename_val_column <- function(df_out, newcolname_all, nruns) {
  valcolname <- colnames(df_out)[grepl("Val", colnames(df_out))]
  if (length(newcolname_all) != nruns) {
    cat("Caution: not all runs have 'report_params.csv'. Will skip renaming 'Val' column.")
  } else if (length(unique(newcolname_all)) > 1) {
    cat(sprintf("Caution: multiple column names detected from 'report_params.csv' across runs: %s.
                Will skip renaming 'Val' column.", paste(unique(newcolname_all), collapse = ", ")))
  } else {
    cat(sprintf("Updated column name: %s --> %s", valcolname, unique(newcolname_all)), sep = "\n")
    colnames(df_out)[colnames(df_out) == valcolname] <- unique(newcolname_all)
  }
  return(df_out)
}
