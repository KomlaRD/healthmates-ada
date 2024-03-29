## ---- ada-nine-transformation

ada_nine<- ada_nine%>%
        mutate (
                sex = factor(sex)%>%
                        fct_recode("Male" = "1",
                                   "Female" = "2")%>%
                        ff_label("Sex"),
                
                marital_status = factor(marital_status)%>%
                        fct_recode("Married" = "1",
                                   "Single" = "2",
                                   "Separated/Divorced" = "3",
                                   "Cohabiting" = "4")%>%
                        ff_label("Marital status"),
                
                educ_mum = factor(educ_mum)%>%
                        fct_recode("Never attended school" = "1",
                                   "Elementary/Primary" = "2",
                                   "Junior High" = "3",
                                   "Senior High" = "4",
                                   "Tertiary" = "5")%>%
                        ff_label("Educational status"),
                
                occupation_mum = factor(occupation_mum)%>%
                        fct_recode("Farmer" = "1",
                                   "Trader" = "2",
                                   "Dressmaker" = "3",
                                   "Hairdresser" = "4",
                                   "Others" = "5")%>%
                        ff_label("Occupation"),
                
                income = factor(income)%>%
                        fct_recode("Less than 500 cedis"="1",
                                   "500-900 cedis" = "2",
                                   "1000-1500 cedis" = "3",
                                   "1500 cedis" = "4")%>%
                        ff_label("Income"),
                
                breastfeed_child = factor(breasfeed_child)%>%
                        fct_recode("No"="0",
                                   "Yes" = "1",
                                   "Don't know" = "9")%>%
                        ff_label("Did you ever breastfeed child?"),
                
                duration_bf = factor(duration_bf)%>%
                        fct_recode("Immediately" = "1",
                                   "Within first hour" = "2",
                                   "Hours" = "3",
                                   "Don't know" = "9")%>%
                        ff_label("Duration of breastfeeding after delivery"),
                
                day_bf = factor (day_bf)%>%
                        fct_recode("No" = "0",
                                   "Yes" = "1",
                                   "Don't know" = "9")%>%
                        ff_label("Breastfed the day before survey"),
                
                age_intro_feed = factor (age_intro_feed)%>%
                        fct_recode("<= 2 months" = "1",
                                   "3 months" = "2",
                                   "4 months" = "3",
                                   "5 months" = "4",
                                   "6 months" = "5",
                                   "> 6 months" = "6",
                                   "Don't know" = "9")%>%
                        ff_label("Age of introducing complementary meals"),
                
                edema = factor(edema)%>%
                        fct_recode("No" = "0",
                                   "Yes"= "1")%>%
                        ff_label("Edema"),
                
                age_mons = age_mons%>%
                        ff_label("Age of child (months)"),
                
                age_mother = age_mother%>%
                        ff_label("Age of mother (years)"),
                
                num_child = num_child%>%
                        ff_label("Number of children"),
                
                hours_bf = hours_bf%>%
                        ff_label("How many hours after delivery before child was breastfed?"),
                
                average_intake = average_intake%>%
                        ff_label("Average intake of meals"),
                
                bwt = bwt%>%
                        ff_label("Birth weight (kg)"),
                
                wt = wt%>%
                        ff_label("Weight of child (kg)"),
                
                lenhei = lenhei%>%
                        ff_label("Length/Height (cm)"),
                
                head_circumference = head_circumference%>%
                        ff_label("Head circumference (cm)"),
                
                muac = muac%>%
                        ff_label("Mid-upper arm circumference"),
                
                
                haz = haz%>%
                        ff_label("Height-for-age z-score"),
                
                waz = waz%>%
                        ff_label("Weight-for-age z-score"),
                
                baz = baz%>%
                        ff_label("BMI-for-age z-score"),
                
                
                baz_factor = case_when(
                        baz < -2 ~ "Acute malnutrition",
                        baz >= -2 ~ "Normal")%>%
                        ff_label("Acute malnutrition"),
                
                haz_factor = case_when(
                        haz < -2  ~ "Chronic malnutrition",
                        haz >= -2 ~ "Normal"
                )%>%
                        ff_label("Chronic malnutrition")
                
                
        )
