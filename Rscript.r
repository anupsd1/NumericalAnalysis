
library(tidyverse)  # Library for data wrangling
library(readxl)     # Library for reading excel file
library(janitor)    # Library for data book keeping
library(skimr)      # Library for skimming and summarizing data
library(DT)

###############################################################################

###############################################################################
# Read Data


TRAN_DATA <- read_excel('TransactionData.xls')

DT::datatable(TRAN_DATA)


total_trips <- nrow(TRAN_DATA)

q1_purchase_incidences <- TRAN_DATA %>% 
  summarize(store_1_Cat_11 = sum(TRAN_DATA$cat_11),
            store_1_Cat_12 = sum(TRAN_DATA$cat_12),
            store_1_Cat_13 = sum(TRAN_DATA$cat_13),
            store_2_Cat_21 = sum(TRAN_DATA$cat_21),
            store_2_Cat_22 = sum(TRAN_DATA$cat_22),
            store_2_Cat_23 = sum(TRAN_DATA$cat_23)) %>% 
  pivot_longer(cols      = starts_with("store_"), 
               names_to  = "Categories", 
               values_to = "Purchase_Incidences") %>% 
  rowwise() %>% 
  mutate(Pur_Inc_Per = Purchase_Incidences/total_trips * 100)

DT::datatable(q1_purchase_incidences)

total_category_incidences <- sum(q1_purchase_incidences$Purchase_Incidences)

q2_market_share <- q1_purchase_incidences %>% 
  select(Categories, Purchase_Incidences) %>% 
  rowwise() %>% 
  mutate(market_share = Purchase_Incidences/total_category_incidences * 100) %>% 
  select(Categories, market_share)

DT::datatable(q2_market_share)

cross_tab <- TRAN_DATA %>% 
  group_by(cat_11, cat_12, cat_13, cat_21, cat_22, cat_23) %>% 
  tally()

DT::datatable(cross_tab)

cross_tab_dataframe <- data.frame(matrix(ncol = 6, nrow = 6))

colnames(cross_tab_dataframe) <- c("Cat_11","Cat_12","Cat_13",
                                   "Cat_21","Cat_22","Cat_23")

rownames(cross_tab_dataframe) <- c("Cat_11","Cat_12","Cat_13",
                                   "Cat_21","Cat_22","Cat_23")

cross_tab_dataframe$Cat_11[1] <- sum((cross_tab %>% filter(cat_11 == 1))$n)
cross_tab_dataframe$Cat_11[2] <- sum((cross_tab %>% filter(cat_11 == 1 & cat_12 == 1))$n)
cross_tab_dataframe$Cat_11[3] <- sum((cross_tab %>% filter(cat_11 == 1 & cat_13 == 1))$n)
cross_tab_dataframe$Cat_11[4] <- sum((cross_tab %>% filter(cat_11 == 1 & cat_21 == 1))$n)
cross_tab_dataframe$Cat_11[5] <- sum((cross_tab %>% filter(cat_11 == 1 & cat_22 == 1))$n)
cross_tab_dataframe$Cat_11[6] <- sum((cross_tab %>% filter(cat_11 == 1 & cat_23 == 1))$n)


cross_tab_dataframe$Cat_12[1] <- sum((cross_tab %>% filter(cat_12 == 1 & cat_11 == 1))$n)
cross_tab_dataframe$Cat_12[2] <- sum((cross_tab %>% filter(cat_12 == 1))$n)
cross_tab_dataframe$Cat_12[3] <- sum((cross_tab %>% filter(cat_12 == 1 & cat_13 == 1))$n)
cross_tab_dataframe$Cat_12[4] <- sum((cross_tab %>% filter(cat_12 == 1 & cat_21 == 1))$n)
cross_tab_dataframe$Cat_12[5] <- sum((cross_tab %>% filter(cat_12 == 1 & cat_22 == 1))$n)
cross_tab_dataframe$Cat_12[6] <- sum((cross_tab %>% filter(cat_12 == 1 & cat_23 == 1))$n)

cross_tab_dataframe$Cat_13[1] <- sum((cross_tab %>% filter(cat_13 == 1 & cat_11 == 1))$n)
cross_tab_dataframe$Cat_13[2] <- sum((cross_tab %>% filter(cat_13 == 1 & cat_12 == 1))$n)
cross_tab_dataframe$Cat_13[3] <- sum((cross_tab %>% filter(cat_13 == 1))$n)
cross_tab_dataframe$Cat_13[4] <- sum((cross_tab %>% filter(cat_13 == 1 & cat_21 == 1))$n)
cross_tab_dataframe$Cat_13[5] <- sum((cross_tab %>% filter(cat_13 == 1 & cat_22 == 1))$n)
cross_tab_dataframe$Cat_13[6] <- sum((cross_tab %>% filter(cat_13 == 1 & cat_23 == 1))$n)

cross_tab_dataframe$Cat_21[1] <- sum((cross_tab %>% filter(cat_21 == 1 & cat_11 == 1))$n)
cross_tab_dataframe$Cat_21[2] <- sum((cross_tab %>% filter(cat_21 == 1 & cat_12 == 1))$n)
cross_tab_dataframe$Cat_21[3] <- sum((cross_tab %>% filter(cat_21 == 1 & cat_13 == 1))$n)
cross_tab_dataframe$Cat_21[4] <- sum((cross_tab %>% filter(cat_21 == 1))$n)
cross_tab_dataframe$Cat_21[5] <- sum((cross_tab %>% filter(cat_21 == 1 & cat_22 == 1))$n)
cross_tab_dataframe$Cat_21[6] <- sum((cross_tab %>% filter(cat_21 == 1 & cat_23 == 1))$n)

cross_tab_dataframe$Cat_22[1] <- sum((cross_tab %>% filter(cat_22 == 1 & cat_11 == 1))$n)
cross_tab_dataframe$Cat_22[2] <- sum((cross_tab %>% filter(cat_22 == 1 & cat_12 == 1))$n)
cross_tab_dataframe$Cat_22[3] <- sum((cross_tab %>% filter(cat_22 == 1 & cat_13 == 1))$n)
cross_tab_dataframe$Cat_22[4] <- sum((cross_tab %>% filter(cat_22 == 1 & cat_21 == 1))$n)
cross_tab_dataframe$Cat_22[5] <- sum((cross_tab %>% filter(cat_22 == 1))$n)
cross_tab_dataframe$Cat_22[6] <- sum((cross_tab %>% filter(cat_22 == 1 & cat_23 == 1))$n)

cross_tab_dataframe$Cat_23[1] <- sum((cross_tab %>% filter(cat_23 == 1 & cat_11 == 1))$n)
cross_tab_dataframe$Cat_23[2] <- sum((cross_tab %>% filter(cat_23 == 1 & cat_12 == 1))$n)
cross_tab_dataframe$Cat_23[3] <- sum((cross_tab %>% filter(cat_23 == 1 & cat_13 == 1))$n)
cross_tab_dataframe$Cat_23[4] <- sum((cross_tab %>% filter(cat_23 == 1 & cat_21 == 1))$n)
cross_tab_dataframe$Cat_23[5] <- sum((cross_tab %>% filter(cat_23 == 1 & cat_22 == 1))$n)
cross_tab_dataframe$Cat_23[6] <- sum((cross_tab %>% filter(cat_23 == 1))$n)

DT::datatable(cross_tab_dataframe)


mkt_mix_descriptive <- TRAN_DATA %>% 
  select(starts_with("up") | starts_with("ud")) %>% 
  skim()

price_discount_descriptive <- mkt_mix_descriptive %>% 
  select(skim_variable, numeric.mean, numeric.sd)

DT::datatable(price_discount_descriptive)



store_1_cat_11_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_11 == 1) %>% select(up_cat_11))
store_1_cat_12_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_12 == 1) %>% select(up_cat_12))
store_1_cat_13_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_13 == 1) %>% select(up_cat_13))

store_2_cat_21_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_21 == 1) %>% select(up_cat_21))
store_2_cat_22_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_22 == 1) %>% select(up_cat_22))
store_2_cat_23_sales <- sum(TRAN_DATA %>% dplyr::filter(cat_23 == 1) %>% select(up_cat_23))

total_sales <- store_1_cat_11_sales + store_1_cat_12_sales + store_1_cat_13_sales + 
  store_2_cat_21_sales + store_2_cat_22_sales + store_2_cat_23_sales


correlation <- cor(c(store_1_cat_11_sales, store_1_cat_12_sales, store_1_cat_13_sales),
                   c(store_2_cat_21_sales, store_2_cat_22_sales, store_2_cat_23_sales))

mkt_share <- data.frame(Category = c("Cat-11", "Cat-12", "Cat-13", "Cat-21", "Cat-22", "Cat-23"),
                        Sales    = c(store_1_cat_11_sales, store_1_cat_12_sales, store_1_cat_13_sales,
                                     store_2_cat_21_sales, store_2_cat_22_sales, store_2_cat_23_sales),
                        Market_Share = c(store_1_cat_11_sales*100/total_sales, store_1_cat_12_sales*100/total_sales, store_1_cat_13_sales*100/total_sales,
                                         store_2_cat_21_sales*100/total_sales, store_2_cat_22_sales*100/total_sales, store_2_cat_23_sales*100/total_sales))

DT::datatable(mkt_share)

OCC_SPECIFIC_TRANS <- TRAN_DATA %>% 
  dplyr::filter(holiday == 1)

total_trips <- nrow(OCC_SPECIFIC_TRANS)

q6_purchase_incidences <- OCC_SPECIFIC_TRANS %>% 
  summarize(store_1_Cat_11 = sum(OCC_SPECIFIC_TRANS$cat_11),
            store_1_Cat_12 = sum(OCC_SPECIFIC_TRANS$cat_12),
            store_1_Cat_13 = sum(OCC_SPECIFIC_TRANS$cat_13),
            store_2_Cat_21 = sum(OCC_SPECIFIC_TRANS$cat_21),
            store_2_Cat_22 = sum(OCC_SPECIFIC_TRANS$cat_22),
            store_2_Cat_23 = sum(OCC_SPECIFIC_TRANS$cat_23)) %>% 
  pivot_longer(cols      = starts_with("store_"), 
               names_to  = "Categories", 
               values_to = "Purchase_Incidences") %>% 
  rowwise() %>% 
  mutate(Pur_Inc_Per = Purchase_Incidences/total_trips * 100)

DT::datatable(q6_purchase_incidences)

store_dist_descriptive <- TRAN_DATA %>% 
  select(store_dist_1, store_dist_2) %>% 
  skim()

store_dist_descriptive <- store_dist_descriptive %>% 
  select(skim_variable, numeric.mean, numeric.sd)

DT::datatable(store_dist_descriptive)


