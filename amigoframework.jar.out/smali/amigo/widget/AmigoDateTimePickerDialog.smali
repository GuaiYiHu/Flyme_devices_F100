.class public Lamigo/widget/AmigoDateTimePickerDialog;
.super Lamigo/app/AmigoAlertDialog;
.source "AmigoDateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# static fields
.field private static final CALENDAR:Ljava/lang/String; = "calendar"

.field private static final TAG:Ljava/lang/String; = "AmigoDateTimePickerDialog"


# instance fields
.field private mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

.field private mOnDateTimeSetListener:Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "onDateTimeSetListener"    # Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;
    .param p4, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 31
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance v1, Lamigo/widget/AmigoDateTimePicker;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v4, v4}, Lamigo/widget/AmigoDateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    .line 34
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoDateTimePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v1, p4}, Lamigo/widget/AmigoDateTimePicker;->updateCalendar(Ljava/util/Calendar;)V

    .line 39
    const/4 v1, -0x1

    const v2, 0x9090012

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lamigo/widget/AmigoDateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 41
    const v1, 0x909000e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v3, v1, p0}, Lamigo/widget/AmigoDateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoDateTimePickerDialog;->setIcon(I)V

    .line 44
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoDateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 45
    iput-object p3, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mOnDateTimeSetListener:Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onDateTimeSetListener"    # Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;
    .param p3, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lamigo/widget/AmigoDateTimePickerDialog;-><init>(Landroid/content/Context;ILamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;Ljava/util/Calendar;)V

    .line 27
    return-void
.end method

.method private tryNotifyDateTimeSet()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mOnDateTimeSetListener:Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;

    if-nez v1, :cond_0

    .line 58
    const-string v1, "AmigoDateTimePickerDialog"

    const-string v2, "tryNotifyDateTimeSet() mOnDateTimeSetListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v1}, Lamigo/widget/AmigoDateTimePicker;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "calendar":Ljava/util/Calendar;
    if-nez v0, :cond_1

    .line 64
    const-string v1, "AmigoDateTimePickerDialog"

    const-string v2, "tryNotifyDateTimeSet() calendar == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mOnDateTimeSetListener:Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;

    invoke-interface {v1, v0}, Lamigo/widget/AmigoDateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Ljava/util/Calendar;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 52
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePickerDialog;->tryNotifyDateTimeSet()V

    .line 54
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lamigo/app/AmigoAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v1, "calendar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 97
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoDateTimePicker;->updateCalendar(Ljava/util/Calendar;)V

    .line 98
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, "savedInstanceState":Landroid/os/Bundle;
    iget-object v2, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoDateTimePicker;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 88
    const-string v2, "calendar"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    :cond_0
    return-object v1
.end method

.method public set24HourFormat(Z)V
    .locals 1
    .param p1, "is24HourFormat"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoDateTimePicker;->set24HourFormat(Z)V

    .line 81
    return-void
.end method

.method public updateDate(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v0, "AmigoDateTimePickerDialog"

    const-string v1, "updateDate calendar == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePickerDialog;->mDateTimePicker:Lamigo/widget/AmigoDateTimePicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoDateTimePicker;->updateCalendar(Ljava/util/Calendar;)V

    goto :goto_0
.end method
