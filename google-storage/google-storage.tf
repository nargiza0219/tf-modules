resource "google_storage_bucket" "static" {
 name          = var.bucket-name  #tfstate-lock-files
 location      = var.bucket-location
 storage_class = var.bucket-storage-class #STANDARD

 uniform_bucket_level_access = var.level-access #true
}

# Upload a text file as an object
# # to the storage bucket

# resource "google_storage_bucket_object" "default" {
#  name         = "OBJECT_NAME"
#  source       = "OBJECT_PATH"
#  content_type = "text/plain"
#  bucket       = google_storage_bucket.static.id
# }