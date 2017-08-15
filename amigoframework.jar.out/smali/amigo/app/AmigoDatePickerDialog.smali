.class public Lamigo/app/AmigoDatePickerDialog;
.super Lamigo/app/AmigoAlertDialog;
.source "AmigoDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lamigo/widget/AmigoDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Lamigo/widget/AmigoDatePicker;

.field private mTitleNeedsUpdate:Z

.field private mTitleTv:Lamigo/widget/AmigoTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILamigo/app/AmigoDatePickerDialog$OnDateSetListener;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v3, 0x1

    iput-boolean v3, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 93
    invoke-virtual {p0}, Lamigo/app/AmigoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lamigo/app/AmigoDatePickerDialog;->mCallBack:Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 99
    invoke-virtual {p0}, Lamigo/app/AmigoDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x9090012

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lamigo/app/AmigoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v3, -0x2

    const v4, 0x909000e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lamigo/app/AmigoDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lamigo/app/AmigoDatePickerDialog;->setIcon(I)V

    .line 105
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 107
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x9030003

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lamigo/app/AmigoDatePickerDialog;->setView(Landroid/view/View;)V

    .line 109
    const v3, 0x90b0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoDatePicker;

    iput-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    .line 110
    iget-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lamigo/widget/AmigoDatePicker;->init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V

    .line 111
    const v3, 0x90b006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoTextView;

    iput-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleTv:Lamigo/widget/AmigoTextView;

    .line 112
    invoke-direct {p0, p4, p5, p6}, Lamigo/app/AmigoDatePickerDialog;->updateTitle(III)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 67
    const v0, 0x9010094

    invoke-static {p1, v0}, Lamigo/app/AmigoDatePickerDialog;->resolvedTheme(Landroid/content/Context;I)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lamigo/app/AmigoDatePickerDialog;-><init>(Landroid/content/Context;ILamigo/app/AmigoDatePickerDialog$OnDateSetListener;III)V

    .line 68
    return-void
.end method

.method private static resolvedTheme(Landroid/content/Context;I)I
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mCallBack:Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0}, Lamigo/widget/AmigoDatePicker;->clearFocus()V

    .line 152
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mCallBack:Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    iget-object v2, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v3}, Lamigo/widget/AmigoDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v4}, Lamigo/widget/AmigoDatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lamigo/app/AmigoDatePickerDialog$OnDateSetListener;->onDateSet(Lamigo/widget/AmigoDatePicker;III)V

    .line 155
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x1

    .line 167
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v1}, Lamigo/widget/AmigoDatePicker;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 169
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 170
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 171
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lamigo/app/AmigoDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleTv:Lamigo/widget/AmigoTextView;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iput-boolean v5, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 189
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v1, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleNeedsUpdate:Z

    .line 184
    iget-object v1, p0, Lamigo/app/AmigoDatePickerDialog;->mTitleTv:Lamigo/widget/AmigoTextView;

    const v2, 0x9090001

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoTextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Lamigo/widget/AmigoDatePicker;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 118
    invoke-direct {p0}, Lamigo/app/AmigoDatePickerDialog;->tryNotifyDateSet()V

    .line 121
    :cond_0
    return-void
.end method

.method public onDateChanged(Lamigo/widget/AmigoDatePicker;III)V
    .locals 1
    .param p1, "view"    # Lamigo/widget/AmigoDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lamigo/widget/AmigoDatePicker;->init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V

    .line 126
    invoke-direct {p0, p2, p3, p4}, Lamigo/app/AmigoDatePickerDialog;->updateTitle(III)V

    .line 127
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lamigo/app/AmigoAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 204
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "day":I
    iget-object v3, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lamigo/widget/AmigoDatePicker;->init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V

    .line 208
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v1, "month"

    iget-object v2, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v1, "day"

    iget-object v2, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onStop()V

    .line 162
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lamigo/app/AmigoDatePickerDialog;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoDatePicker;->updateDate(III)V

    .line 147
    return-void
.end method
