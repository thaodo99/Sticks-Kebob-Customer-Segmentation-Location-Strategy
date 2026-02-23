#####################################
# Sticks Kebob Segmentation Analysis
#####################################

set.seed(4)

# Load Data
seg <- read.csv("M-0866X-Data.csv",
                header = TRUE,
                stringsAsFactors = FALSE)

# Convert columns to numeric where possible
seg[] <- lapply(seg, function(x) as.numeric(as.character(x)))


# 1. Hierarchical Clustering


base_vars <- c("Cust", "D1.1", "D1.2", "D1.3", "D1.4")

# Remove rows with missing values in base variables
seg_base <- seg[complete.cases(seg[, base_vars]), base_vars]

# Scale variables
seg_scaled <- scale(seg_base)

# Run hierarchical clustering
seg_hclust <- hclust(dist(seg_scaled), method = "complete")

# Elbow Plot
x <- 1:10
sort_height <- sort(seg_hclust$height, decreasing = TRUE)
y <- sort_height[1:10]
plot(x, y, type = "b",
     main = "Elbow Plot",
     xlab = "Number of Clusters",
     ylab = "Height")


# 2. K-Means Clustering


k <- 5  # chosen based on elbow plot
seg_kmeans <- kmeans(seg_scaled, centers = k)

# Cluster sizes
print(seg_kmeans$size)


# 3. Add Segments Back to Data

seg_base$segment <- seg_kmeans$cluster

# Merge back to original dataset
segmentation_result <- seg
segmentation_result$segment <- NA
segmentation_result[rownames(seg_base), "segment"] <- seg_base$segment


# 4. Export Results

write.csv(segmentation_result,
          file = "segmentation_results.csv",
          row.names = FALSE)

cat("Segmentation completed successfully.\n")