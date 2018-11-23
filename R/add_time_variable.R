#' Add additional time variables to a dataframe based on an existing date/time variable.
#'
#' @param df A dataframe.
#' @param datevar A char string of the date variable.
#'
#' @return
#'   \item{df}{Returns a df containing the created variables: month, month.abb, monthday, week, weekday, etc.}
#'
#' @export

add_variable_monthweek <- function(df, datevar = "date"){

  if (!is.data.frame(df)){
    warning("df should be a dataframe")
  }
  if (is.null(df[datevar])){
    warning("Date variable does NOT exist")
  }

  if (is.null(df$date)) {
    df$date <- df[datevar]
  }

  # Addd month variables
  month <- as.numeric(strftime(df$date, "%m"))
  df$month <- month
  df$month.abb <- factor(df$month, levels=1:max(df$month), labels=month.abb[1:max(df$month)], ordered=TRUE)

  # %j: Day of year as decimal number (001–366).
  # %d: Day of the month as decimal number (01–31).
  # %u: Weekday as a decimal number (1–7, Monday is 1).
  # %w: Weekday as decimal number (0–6, Sunday is 0).
  # %W: Week of the year as decimal number (00–53) using Monday as the first day of week
  # (and typically with the first Monday of the year as day 1 of week 1). The UK convention

  df$monthday <- as.numeric(strftime(df$date, "%d"))
  df$monthdayf <- factor(df$monthday, levels=c(1:31), ordered=TRUE)

  # df$weekday <- as.numeric(strftime(df$date, "%u")) # same as follow but using (0-6)
  df$weekday <- as.POSIXlt(df$date)$wday
  df$weekdayf <- factor(df$weekday, levels=rev(0:6), labels=rev(c("Sun","Mon","Tue","Wed","Thu","Fri","Sat")),
                          ordered=TRUE)

  week <- as.numeric(strftime(df$date, "%W"))
  df$week <- week

  # library(plyr) for adding df$monthweek
  df <- plyr::ddply(df, .(month), transform, monthweek = 1 + week - min(week))
  # df <- ddply(df, .(month.abb), transform, monthweek = 1 + week - min(week))

  return(df)
}
