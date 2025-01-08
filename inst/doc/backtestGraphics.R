### R code from vignette source 'backtestGraphics.Rnw'

###################################################
### code chunk number 1: backtestGraphics.Rnw:126-138
###################################################
library(backtestGraphics)
library(dplyr)

## use the following dplyr code to show a more interesting section of
## the data frame

df <- equity %>% filter(name %in% unique(equity$name)[1:3],
                  date %in% as.Date(c("2005-05-02", "2005-05-03",
                                      "2005-05-04"))) %>%
      arrange(date, name)

print.data.frame(df, row.names = FALSE)


###################################################
### code chunk number 2: backtestGraphics.Rnw:156-165
###################################################

## use the following dplyr code to show a more interesting section of
## the data frame

df <- (commodity %>% filter(id   %in% c("CO", "FC", "W"),
                      date %in% as.Date(c("2003-02-03", "2003-02-07"))) %>%
       arrange(id, name))[c(1,6,15,16,17),]
print.data.frame(df, row.names = FALSE)



###################################################
### code chunk number 3: backtestGraphics.Rnw:187-193
###################################################
df <- credit %>% filter(name %in% unique(credit$name)[1:3],
                  date %in% unique(credit$date)[1:3]) %>%
      arrange(date, name)

print.data.frame(df, row.names = FALSE)



###################################################
### code chunk number 4: backtestGraphics.Rnw:209-211 (eval = FALSE)
###################################################
## library(backtestGraphics)
## backtestGraphics(x = commodity)


