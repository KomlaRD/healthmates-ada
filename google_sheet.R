#Import google sheet
####################

ada_five <- read_sheet("https://docs.google.com/spreadsheets/d/1rkdOdIxIrAXuedT_4bbHxyxWgoa6l4yUxbBuwX6FxNE/edit?usp=sharing",
                       
                       range = "Sheet1!A2:AB77",# Read column A2 to AB77
                       
                       # Modify column names
                       
                       col_names = c("start-time",
                                     "end-time",
                                     "today",
                                     "name",
                                     "dob",
                                     "age_mons",
                                     "display_age",
                                     "age_manual",
                                     "sex",
                                     "age_mother",
                                     "marital_status",
                                     "educ_mum",
                                     "occupation_mum",
                                     "other_occupation",
                                     "num-child",
                                     "income",
                                     "breasfeed_child",
                                     "duration_bf",
                                     "hours_bf",
                                     "day_bf",
                                     "age_intro_feed",
                                     "average_intake",
                                     "bwt",
                                     "wt",
                                     "lenhei",
                                     "head_circumference",
                                     "muac",
                                     "edema"),
                       
                       col_types = "???c?i?icicccciccciciinnnnnc")