library(PharmacoGxPrivate)

myfn <- list.files("/pfs/input/slices/")
print(myfn)
mybasenm <- basename(myfn)

slice <- readRDS(myfn)

res <- PharmacoGx:::.calculateFromRaw(slice)

saveRDS(res, file=paste("/pfs/out/", gsub(basename, pattern = ".rds", replacement="_recomp.rds", fixed=TRUE))