resource "aws_lb" "front_end" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.front_end.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "80"
      protocol    = "HTTP"
      status_code = "HTTP_301"
      host = "www.example.com"
    }
  }
}