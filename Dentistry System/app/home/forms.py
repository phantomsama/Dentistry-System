# _*_ coding: utf-8 _*_
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, FileField, TextAreaField
from wtforms.validators import DataRequired, Email, Regexp, EqualTo, ValidationError
from app.models import User

class RegisterForm(FlaskForm):
    """
    用户注册表单
    """
    username = StringField(
        validators=[
            DataRequired("Username Cannot Be Empty！"),
        ],
        description="Username",
        render_kw={
            "placeholder": "Please Input Username！",
        }
    )
    email = StringField(
        validators=[
            DataRequired("Email Cannot Be Empty！"),
            Email("Email format is incorrect！")
        ],
        description="Email",
        render_kw={
            "type": "email",
            "placeholder": "Please Input Email！",
        }
    )
    pwd = PasswordField(
        validators=[
            DataRequired("Password Cannot Be Empty！")
        ],
        description="Password",
        render_kw={
            "placeholder": "Please Input Password！",
        }
    )
    repwd = PasswordField(
        validators=[
            DataRequired("Please Input Confirmation Password！"),
            EqualTo('pwd', message="Two Passwords Are Inconsistent！")
        ],
        description="Confirmation Password",
        render_kw={
            "placeholder": "Please Input Confirmation Password！",
        }
    )
    submit = SubmitField(
        'Sign Up',
        render_kw={
            "class": "btn btn-primary",
        }
    )

    def validate_email(self, field):
        """
        检测注册邮箱是否已经存在
        :param field: 字段名
        """
        email = field.data
        user = User.query.filter_by(email=email).count()
        if user == 1:
            raise ValidationError("Email Already Exists！")


class LoginForm(FlaskForm):
    """
    登录功能
    """
    email = StringField(
        validators=[
            DataRequired("Email Cannot Be Empty！")
        ],
        description="Email",
        render_kw={
            "type"       : "email",
            "placeholder": "Please Input Email！",
        }
    )
    pwd = PasswordField(

        validators=[
            DataRequired("Password Cannot Be Empty！")
        ],
        description="Password",
        render_kw={
            "type"       : "password",
            "placeholder": "Please Input Password！",
        }
    )
    submit = SubmitField(
        'Sign In',
        render_kw={
            "class": "btn btn-primary",
        }
    )

class SuggetionForm(FlaskForm):
    """
    意见建议
    """
    name = StringField(
        label="Username",
        validators=[
            DataRequired("Username Cannot Be Empty！")
        ],
        description="Username",
        render_kw={
            "placeholder": "Please Input Username！",
            "class" : "form-control"
        }
    )
    email = StringField(
        label="Email",
        validators=[
            DataRequired("Email Cannot Be Empty！")
        ],
        description="Email",
        render_kw={
            "type"       : "email",
            "placeholder": "Please Input Email！",
            "class" : "form-control"
        }
    )
    content = TextAreaField(
        label="Feedbacks",
        validators=[
            DataRequired("Feedback Cannot Be Empty！")
        ],
        description="Feedbacks",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Content！",
            "rows" : 7
        }
    )
    submit = SubmitField(
        'Submit',
        render_kw={
            "class": "btn-default btn-cf-submit",
        }
    )




