resource "google_spanner_instance" "spanner_tf" {
  name = "spannertf"
  config       = "australia-southeast1"
  display_name = "Spanner from TF"
  num_nodes    = 1
 labels = {
    "env" = "learningtf"
 }
}

resource "google_spanner_database" "test_db1"{
   name = "test_db1"
   instance = google_spanner_instance.spanner_tf.name
}