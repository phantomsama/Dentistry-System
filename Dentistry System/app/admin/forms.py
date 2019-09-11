# _*_ coding: utf-8 _*_

from flask_wtf import FlaskForm
from flask_wtf.file import  FileAllowed
from wtforms import StringField, PasswordField, SubmitField, FileField, TextAreaField, RadioField,SelectField
from wtforms.validators import DataRequired, ValidationError
from app.models import Admin


class LoginForm(FlaskForm):
    """
    管理员登录表单
    """
    account = StringField(
        label="Username",
        validators=[
            DataRequired("Username Cannot Be Empty!")
        ],
        description="Username",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Your Username！",
        }
    )
    pwd = PasswordField(
        label="Password",
        validators=[
            DataRequired("Password Cannot Be Empty!")
        ],
        description="Password",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Your Password！",
        }
    )
    submit = SubmitField(
        'Sign In',
        render_kw={
            "class": "btn btn-primary btn-block btn-flat",
        }
    )

    # 验证账号，命名规则：validate_ + 字段名。如果要验证密码，则可以创建函数validate_pwd
    def validate_account(self, field):
        account = field.data
        admin = Admin.query.filter_by(name=account).count()
        if admin == 0:
            raise ValidationError("No Account Exists! ")

class PwdForm(FlaskForm):
    old_pwd = PasswordField(
        label="Old Password",
        validators=[
            DataRequired("Old Password Cannot Be Empty！")
        ],
        description="Old Password",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Old Password！",
        }
    )
    new_pwd = PasswordField(
        label="New Password",
        validators=[
            DataRequired("New Password Cannot Be Empty！")
        ],
        description="New Password",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input New Password！",
        }
    )
    submit = SubmitField(
        'Submit',
        render_kw={
            "class": "btn btn-primary",
        }
    )

    def validate_old_pwd(self, field):
        from flask import session
        pwd = field.data
        name = session["admin"]
        admin = Admin.query.filter_by(
            name=name
        ).first()
        if not admin.check_pwd(pwd):
            raise ValidationError("Wrong Old Password！")

class AreaForm(FlaskForm):
    """添加/编辑Chapter的表单"""
    name = StringField(
        label="Chapter",
        validators=[
            DataRequired("Chapter Name Cannot Be Empty")
        ],
        description="Chapter Name",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input The Chapter Name"
        }
    )
    is_recommended = RadioField(
        label = 'Show On Homepage?',
        description="Show On Homepage?",
        coerce = int,
        choices=[(0, 'No'), (1,'Yes')], default=0,
    )
    introduction = TextAreaField(
        label="Introduction",
        validators=[
            DataRequired("Introduction Name Cannot Be Empty！")
        ],
        description="Introduction",
        render_kw={
            "class": "form-control",
            "rows": 5
        }
    )

    submit = SubmitField(
        'Submit',
        render_kw={
            "class": "btn btn-primary",
        }
    )

class ScenicForm(FlaskForm):
    title = StringField(
        label="Subsection Name",
        validators=[
            DataRequired("Subsection Name Cannot Be Empty！")
        ],
        description="Subsection Name",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input The Subsection Name！"
        }
    )
    address = StringField(
        label="Key Word In This Subsection",
        validators=[
            DataRequired("Key Word Cannot Be Empty！")
        ],
        description="Key Word In This Subsection",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input The Key Word！"
        }
    )    
    star = SelectField(
        label="Importance Level",
        validators=[
            DataRequired("Please Choose The Importance Level！")
        ],
        coerce=int,
        choices=[(1, "1 star"), (2, "2 star"), (3, "3 star"), (4, "4 star"), (5, "5 star")],default=5,
        description="Importance Level",
        render_kw={
            "class": "form-control",
        }
    )

    logo = FileField(
        label="Cover Image",
        validators=[
            DataRequired("Please Upload Cover Image！"),
            FileAllowed(['jpg', 'png'], 'Please Upload JPG Or PNG Format Pictures!')
        ],
        description="Cover Image",
    )

    is_hot = RadioField(
        label = 'Is it often browsed?',
        description="Is it often browsed?",
        coerce = int,
        choices=[(0, 'No'), (1,'Yes')], default=0,
    )
    is_recommended = RadioField(
        label = 'Show On Homepage?',
        description="Show On Homepage?",
        coerce = int,
        choices=[(0, 'No'), (1,'Yes')], default=0,
    )    
    introduction = TextAreaField(
        label="Subsection Introduction",
        validators=[
            DataRequired("Subsection Introduction Cannot Be Empty！")
        ],
        description="Subsection Introduction",
        render_kw={
            "class": "form-control",
            "rows": 5
        }
    )
    content = TextAreaField(
        label="Subsection Content",
        validators=[
            DataRequired("Subsection Content Cannot Be Empty！")
        ],
        description="Subsection Content",
        render_kw={
            "class": "form-control ckeditor",
            "rows": 10
        }
    )
    area_id = SelectField(
        label="Chapters to which it belongs",
        validators=[
            DataRequired("Please Choose Chapter！")
        ],
        coerce=int,
        description="Chapters to which it belongs",
        render_kw={
            "class": "form-control",
        }
    )
    submit = SubmitField(
        'Submit',
        render_kw={
            "class": "btn btn-primary",
        }
    )        

class TravelsForm(FlaskForm):
    title = StringField(
        label="Title",
        validators=[
            DataRequired("Title Cannot Be Empty！")
        ],
        description="Title",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Title！"
        }
    )
    author = StringField(
        label="Author",
        validators=[
            DataRequired("Author Name Cannot Be Empty！")
        ],
        description="Author",
        render_kw={
            "class": "form-control",
            "placeholder": "Please Input Authro Name！"
        }
    )    
    content = TextAreaField(
        label="Notes Content",
        validators=[
            DataRequired("Notes Content Cannot Be Empty！")
        ],
        description="Notes Content",
        render_kw={
            "class": "form-control ckeditor",
        }
    )
    scenic_id = SelectField(
        label="Subsections to which it belongs",
        validators=[
            DataRequired("Please Choose Subsection！")
        ],
        coerce=int,
        description="Subsections to which it belongs",
        render_kw={
            "class": "form-control",
        }
    )
    submit = SubmitField(
        'Submit',
        render_kw={
            "class": "btn btn-primary",
        }
    )        

