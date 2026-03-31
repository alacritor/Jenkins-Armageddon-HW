resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-"
  force_destroy = true


  tags = {
    Name = "Jenkins Bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "pab_name" {
  bucket = aws_s3_bucket.frontend.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "bp_name" {
  bucket = aws_s3_bucket.frontend.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.frontend.arn}/*"
      }
    ]
  })

  depends_on = [aws_s3_bucket_public_access_block.pab_name]
}


resource "aws_s3_object" "object-txt" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Armageddon-Proof/armageddon-link.txt"
  source = "${path.module}/Armageddon-Proof/armageddon-link.txt"
}

resource "aws_s3_object" "object-png" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Armageddon-Proof/Theo-Armageddon-Pass-Proof.png"
  source = "${path.module}/Armageddon-Proof/Theo-Armageddon-Pass-Proof.png"
}

resource "aws_s3_object" "Lab-Evidence" {
  for_each = fileset("${path.module}/Lab-Evidence", "**")

  bucket       = aws_s3_bucket.frontend.id
  key          = "Lab-Evidence/${each.value}"
  source       = "${path.module}/Lab-Evidence/${each.value}"
  content_type = "image/png"
}