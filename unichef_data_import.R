# package
library(readxl)
require(tidyverse)

# loading data
path <- "C:/Users/mark9/Desktop/4_Seminar Case Studies in DS and MA/unicef_data2021/"

## AU0710----
AU0710_Key_Metrics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Key Metrics")
AU0710_D_Like_Source <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Like Source")
AU0710_D_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total frequency distri...")
AU0710_W_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total frequency distr...")
AU0710_M_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Total frequency dist...")
AU0710_D_Page_posts_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Page posts frequency d...")
AU0710_W_Page_posts_freq <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Page posts frequency...")
AU0710_M_Page_posts_freq <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Page posts frequency...")
AU0710_D_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Talking About This by...")
AU0710_W_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Talking About This by...")
AU0710_M_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Talking About This b...")
AU0710_D_Page_Stories_By_Story <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Page Stories By Story...")
AU0710_W_Page_Stories_By_Story <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Page Stories by story...")
AU0710_D_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Page consumptions by type")
AU0710_W_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Page consumptions by...")
AU0710_M_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Page consumptions by...")
AU0710_Lifetime_Likes_by_Gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Likes by Gender and...")
AU0710_Lifetime_Likes_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Likes By Country")
AU0710_Lifetime_Likes_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Likes by City")
AU0710_Lifetime_Likes_by_Language <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Likes by Language")
AU0710_W_Reach_Demographics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Reach Demographics")
AU0710_W_Reach_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Reach by Country")
AU0710_W_Reach_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Reach by City")
AU0710_W_Reach_by_Language <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Reach by Language")
AU0710_D_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Demographics People Ta...")
AU0710_W_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Demographics People T...")
AU0710_M_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Demographics People...")
AU0710_D_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Country People Talking...")
AU0710_W_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Country People Talkin...")
AU0710_M_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Country People Talki...")
AU0710_Daily_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily City People Talking Ab...")
AU0710_W_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly City People Talking A...")
AU0710_M_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days City People Talking...")
AU0710_D_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Language People Talkin...")
AU0710_W_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Language People Talki...")
AU0710_M_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Language People Talk...")
AU0710_D_Loggedin_Tab_Views <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Logged-in Tab Views")
AU0710_D_External_Referrers <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily External Referrers")
AU0710_D_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Negative Feedback by Type")
AU0710_W_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Negative feedback by...")
AU0710_M_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Negative Feedback by...")
AU0710_D_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Negative Feedback From...")
AU0710_W_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Negative Feedback fro...")
AU0710_M_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Negative Feedback...001")
AU0710_D_CheckIns_by_Gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Check-Ins by Gender an...")
AU0710_D_CheckIns_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Check-Ins by Country")
AU0710_D_CheckIns_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Check-ins by City")
AU0710_D_CheckIns_by_Locale <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Check-Ins by Locale")
AU0710_D_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Positive Feedback from...")
AU0710_W_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Positive Feedback fro...")
AU0710_M_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Positive Feedback fr...")
AU0710_D_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Positive Feedback f...001")
AU0710_W_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Positive Feedback...001")
AU0710_M_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "28 Days Positive Feedback...001")
AU0710_D_Liked_and_Online <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Liked and Online")
AU0710_D_Tot_get_direction_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total get direction cl...")
AU0710_W_Tot_get_direction_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total get direction c...")
AU0710_D_Tot_phone_calls_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total phone calls clic...")
AU0710_W_Tot_phone_calls_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total phone calls cli...")
AU0710_D_Tot_website_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total website click co...")
AU0710_W_Tot_website_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total website click c...")
AU0710_D_Tot_get_direction_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total get direction...001")
AU0710_W_Tot_get_direction_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total get directio...001")
AU0710_D_Tot_pheon_call_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total phone calls c...001")
AU0710_W_Tot_pheon_call_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total phone calls...001")
AU0710_D_Total_website_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Daily Total web site click c...")
AU0710_W_Total_website_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Weekly Total web site click...")

## AU1112----
AU1112_Key_Metrics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Key Metrics")
AU1112_D_Like_Source <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Like Source")
AU1112_D_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total frequency distri...")
AU1112_W_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total frequency distr...")
AU1112_M_Tot_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Total frequency dist...")
AU1112_D_Page_posts_freq_distr <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Page posts frequency d...")
AU1112_W_Page_posts_freq <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Page posts frequency...")
AU1112_M_Page_posts_freq <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Page posts frequency...")
AU1112_D_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Talking About This by...")
AU1112_W_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Talking About This by...")
AU1112_M_Talking_Abt_This_by <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Talking About This b...")
AU1112_D_Page_Stories_By_Story <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Page Stories By Story...")
AU1112_W_Page_Stories_By_Story <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Page Stories by story...")
AU1112_D_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Page consumptions by type")
AU1112_W_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Page consumptions by...")
AU1112_M_Page_consump_by_type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Page consumptions by...")
AU1112_Lifetime_Likes_by_Gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Likes by Gender and...")
AU1112_Lifetime_Likes_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Likes By Country")
AU1112_Lifetime_Likes_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Likes by City")
AU1112_Lifetime_Likes_by_Language <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Likes by Language")
AU1112_W_Reach_Demographics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Reach Demographics")
AU1112_W_Reach_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Reach by Country")
AU1112_W_Reach_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Reach by City")
AU1112_W_Reach_by_Language <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Reach by Language")
AU1112_D_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Demographics People Ta...")
AU1112_W_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Demographics People T...")
AU1112_M_Demographics_People <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Demographics People...")
AU1112_D_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Country People Talking...")
AU1112_W_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Country People Talkin...")
AU1112_M_Country_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Country People Talki...")
AU1112_Daily_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily City People Talking Ab...")
AU1112_W_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly City People Talking A...")
AU1112_M_City_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days City People Talking...")
AU1112_D_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Language People Talkin...")
AU1112_W_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Language People Talki...")
AU1112_M_Language_People_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Language People Talk...")
AU1112_D_Loggedin_Tab_Views <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Logged-in Tab Views")
AU1112_D_External_Referrers <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily External Referrers")
AU1112_D_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Negative Feedback by Type")
AU1112_W_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Negative feedback by...")
AU1112_M_Negative_Feedback_by_Type <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Negative Feedback by...")
AU1112_D_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Negative Feedback From...")
AU1112_W_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Negative Feedback fro...")
AU1112_M_Negative_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Negative Feedback...001")
AU1112_D_CheckIns_by_Gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Check-Ins by Gender an...")
AU1112_D_CheckIns_by_Country <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Check-Ins by Country")
AU1112_D_CheckIns_by_City <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Check-ins by City")
AU1112_D_CheckIns_by_Locale <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Check-Ins by Locale")
AU1112_D_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Positive Feedback from...")
AU1112_W_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Positive Feedback fro...")
AU1112_M_Positive_Feedback <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Positive Feedback fr...")
AU1112_D_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Positive Feedback f...001")
AU1112_W_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Positive Feedback...001")
AU1112_M_Positive_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "28 Days Positive Feedback...001")
AU1112_D_Liked_and_Online <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Liked and Online")
AU1112_D_Tot_get_direction_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total get direction cl...")
AU1112_W_Tot_get_direction_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total get direction c...")
AU1112_D_Tot_phone_calls_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total phone calls clic...")
AU1112_W_Tot_phone_calls_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total phone calls cli...")
AU1112_D_Tot_website_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total website click co...")
AU1112_W_Tot_website_click <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total website click c...")
AU1112_D_Tot_get_direction_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total get direction...001")
AU1112_W_Tot_get_direction_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total get directio...001")
AU1112_D_Tot_pheon_call_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total phone calls c...001")
AU1112_W_Tot_pheon_call_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total phone calls...001")
AU1112_D_Total_website_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Daily Total web site click c...")
AU1112_W_Total_website_click_age_gender <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Audience) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Weekly Total web site click...")

## PO0710
PO0710_Key_Metrics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Key Metrics")
PO0710_Lifetime_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Talking About This(...")
PO0710_Lifetime_Post_Stories <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Post Stories by act...")
PO0710_Lifetime_Post_Consumers <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Post Consumers by type")
PO0710_Lifetime_Post_Consumptions <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Post Consumptions b...")
PO0710_Lifetime_Negative_Feedback_tot <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Negative Feedback f...")
PO0710_Lifetime_Negative_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - July-October2020.xlsx"), 
             sheet = "Lifetime Negative Feedback")

## PO1112
PO1112_Key_Metrics <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Key Metrics")
PO1112_Lifetime_Talk <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Talking About This(...")
PO1112_Lifetime_Post_Stories <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Post Stories by act...")
PO1112_Lifetime_Post_Consumers <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Post Consumers by type")
PO1112_Lifetime_Post_Consumptions <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Post Consumptions b...")
PO1112_Lifetime_Negative_Feedback_tot <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Negative Feedback f...")
PO1112_Lifetime_Negative_Feedback_uni <- 
  read_excel(paste0(path,"Facebook Insights Data Export (Post Level) - UNICEF Nederland - November&December2020.xlsx"), 
             sheet = "Lifetime Negative Feedback")

# QUESTIONNAIRE
QN_RESPONDENT_CODE <- 
  read_excel(paste0(path,"QUESTIONNAIRE DATA EUR DEC2020.xlsx"), 
             sheet = "RESPONDENT CODE")
QN_REASONS_DONATING <- 
  read_excel(paste0(path,"QUESTIONNAIRE DATA EUR DEC2020.xlsx"), 
             sheet = "REASONS FOR DONATING")
QN_REASONS_AGAINST_DONATING <- 
  read_excel(paste0(path,"QUESTIONNAIRE DATA EUR DEC2020.xlsx"), 
             sheet = "REASONS AGAINST DONATING")
QN_ORGANIZATION_THEME <- 
  read_excel(paste0(path,"QUESTIONNAIRE DATA EUR DEC2020.xlsx"), 
             sheet = "ORGANIZATION THEME")

