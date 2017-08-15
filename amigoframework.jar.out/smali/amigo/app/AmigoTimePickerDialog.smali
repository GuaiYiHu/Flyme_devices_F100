.class public Lamigo/app/AmigoTimePickerDialog;
.super Lamigo/app/AmigoAlertDialog;
.source "AmigoTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lamigo/widget/AmigoTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILamigo/app/AmigoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    iput-object p3, p0, Lamigo/app/AmigoTimePickerDialog;->mCallback:Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;

    .line 84
    iput p4, p0, Lamigo/app/AmigoTimePickerDialog;->mInitialHourOfDay:I

    .line 85
    iput p5, p0, Lamigo/app/AmigoTimePickerDialog;->mInitialMinute:I

    .line 86
    iput-boolean p6, p0, Lamigo/app/AmigoTimePickerDialog;->mIs24HourView:Z

    .line 88
    invoke-virtual {p0, v5}, Lamigo/app/AmigoTimePickerDialog;->setIcon(I)V

    .line 93
    invoke-virtual {p0}, Lamigo/app/AmigoTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x9090012

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lamigo/app/AmigoTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    const/4 v3, -0x2

    const v4, 0x909000e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lamigo/app/AmigoTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 100
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x9030006

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lamigo/app/AmigoTimePickerDialog;->setView(Landroid/view/View;)V

    .line 102
    const v3, 0x90b0011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lamigo/widget/AmigoTimePicker;

    iput-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    .line 105
    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v3, v5}, Lamigo/widget/AmigoTimePicker;->setLayoutDirection(I)V

    .line 106
    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget-boolean v4, p0, Lamigo/app/AmigoTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lamigo/widget/AmigoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 107
    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget v4, p0, Lamigo/app/AmigoTimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 108
    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget v4, p0, Lamigo/app/AmigoTimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 109
    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v3, p0}, Lamigo/widget/AmigoTimePicker;->setOnTimeChangedListener(Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 60
    const v0, 0x9010094

    invoke-static {p1, v0}, Lamigo/app/AmigoTimePickerDialog;->resolvedTheme(Landroid/content/Context;I)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lamigo/app/AmigoTimePickerDialog;-><init>(Landroid/content/Context;ILamigo/app/AmigoTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 61
    return-void
.end method

.method private static resolvedTheme(Landroid/content/Context;I)I
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 65
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 66
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 67
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mCallback:Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v0}, Lamigo/widget/AmigoTimePicker;->clearFocus()V

    .line 133
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mCallback:Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v3}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lamigo/app/AmigoTimePickerDialog$OnTimeSetListener;->onTimeSet(Lamigo/widget/AmigoTimePicker;II)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public getTimePicker()Lamigo/widget/AmigoTimePicker;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 115
    invoke-direct {p0}, Lamigo/app/AmigoTimePickerDialog;->tryNotifyTimeSet()V

    .line 118
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lamigo/app/AmigoAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "minute":I
    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 160
    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 161
    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 162
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "minute"

    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "is24hour"

    iget-object v2, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lamigo/app/AmigoAlertDialog;->onStop()V

    .line 143
    return-void
.end method

.method public onTimeChanged(Lamigo/widget/AmigoTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lamigo/widget/AmigoTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 127
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 122
    iget-object v0, p0, Lamigo/app/AmigoTimePickerDialog;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 123
    return-void
.end method
