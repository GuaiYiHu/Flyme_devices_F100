.class public Lamigo/widget/AmigoDateTimePicker;
.super Landroid/widget/LinearLayout;
.source "AmigoDateTimePicker.java"

# interfaces
.implements Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;
.implements Lamigo/widget/AmigoDatePicker$OnDateChangedListener;


# static fields
.field private static final ACTIONBAR_TAB_INDICATOR_BOTTOM_PADDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AmigoDateTimePicker"


# instance fields
.field private mAccentColor:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDatePicker:Lamigo/widget/AmigoDatePicker;

.field private mDateTabLabel:Lamigo/widget/AmigoTextView;

.field private mNomalColor:Landroid/content/res/ColorStateList;

.field private mTabHost:Lamigo/widget/AmigoTabHost;

.field private mTabWidget:Lamigo/widget/AmigoTabWidget;

.field private mTimePicker:Lamigo/widget/AmigoTimePicker;

.field private mTimeTabLabel:Lamigo/widget/AmigoTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/16 v0, -0x7000

    iput v0, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    .line 45
    iput-object p1, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoDateTimePicker;->setOrientation(I)V

    .line 47
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoDateTimePicker;->setHorizontalGravity(I)V

    .line 49
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->initCalendar()V

    .line 51
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->initTimePicker()V

    .line 52
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->initDatePicker()V

    .line 54
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->initTabs()V

    .line 56
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateDatePickerTitle()V

    .line 57
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateTimePickerTitle()V

    .line 59
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->adjusetHeight()V

    .line 61
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->changeColor()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoDatePicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTimePicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoDateTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget v0, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    return v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoDateTimePicker;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mNomalColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDateTimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    return-object v0
.end method

.method private adjusetHeight()V
    .locals 6

    .prologue
    .line 166
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 168
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    const v4, 0x1020011

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoDateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "content":Landroid/view/View;
    const/4 v2, 0x0

    .line 172
    .local v2, "height":I
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v4, v5, :cond_0

    .line 173
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x23

    div-int/lit8 v2, v4, 0x64

    .line 177
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-void

    .line 175
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private changeColor()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTabHost;->setIndicatorBackgroundColor(I)V

    .line 96
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    .line 98
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    iget v1, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTextView;->setTextColor(I)V

    .line 99
    return-void
.end method

.method private initCalendar()V
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 67
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 68
    return-void
.end method

.method private initDatePicker()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lamigo/widget/AmigoDatePicker;

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lamigo/widget/AmigoDatePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    .line 83
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateDatePicker()V

    .line 84
    return-void
.end method

.method private initTabs()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x41a00000    # 20.0f

    const/16 v7, 0x11

    .line 102
    const v2, 0x903003a

    .line 103
    .local v2, "layoutResourceId":I
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 104
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x1

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    const v5, 0x90b006a

    invoke-virtual {p0, v5}, Lamigo/widget/AmigoDateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lamigo/widget/AmigoTabHost;

    iput-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    .line 107
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v5}, Lamigo/widget/AmigoTabHost;->setup()V

    .line 109
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v5}, Lamigo/widget/AmigoTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    check-cast v5, Lamigo/widget/AmigoTabWidget;

    iput-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabWidget:Lamigo/widget/AmigoTabWidget;

    .line 110
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabWidget:Lamigo/widget/AmigoTabWidget;

    const v6, 0xffffff

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabWidget;->setBackgroundColor(I)V

    .line 112
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v3, "tabLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 115
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    const-string v6, "Tab1"

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 117
    .local v0, "dateTabSpec":Landroid/widget/TabHost$TabSpec;
    new-instance v5, Lamigo/widget/AmigoTextView;

    iget-object v6, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lamigo/widget/AmigoTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    .line 118
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setTextSize(F)V

    .line 119
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v7}, Lamigo/widget/AmigoTextView;->setGravity(I)V

    .line 120
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v3}, Lamigo/widget/AmigoTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 122
    new-instance v5, Lamigo/widget/AmigoDateTimePicker$1;

    invoke-direct {v5, p0}, Lamigo/widget/AmigoDateTimePicker$1;-><init>(Lamigo/widget/AmigoDateTimePicker;)V

    invoke-virtual {v0, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 130
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    const-string v6, "Tab2"

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 132
    .local v4, "timeTabSpec":Landroid/widget/TabHost$TabSpec;
    new-instance v5, Lamigo/widget/AmigoTextView;

    iget-object v6, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lamigo/widget/AmigoTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    .line 133
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v3}, Lamigo/widget/AmigoTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v8}, Lamigo/widget/AmigoTextView;->setTextSize(F)V

    .line 135
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5, v7}, Lamigo/widget/AmigoTextView;->setGravity(I)V

    .line 136
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 137
    new-instance v5, Lamigo/widget/AmigoDateTimePicker$2;

    invoke-direct {v5, p0}, Lamigo/widget/AmigoDateTimePicker$2;-><init>(Lamigo/widget/AmigoDateTimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 144
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    invoke-virtual {v5}, Lamigo/widget/AmigoTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mNomalColor:Landroid/content/res/ColorStateList;

    .line 146
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v5}, Lamigo/widget/AmigoTabHost;->setup()V

    .line 147
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v5, v0}, Lamigo/widget/AmigoTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 148
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v5, v4}, Lamigo/widget/AmigoTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 149
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    iget v6, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabHost;->setIndicatorBackgroundColor(I)V

    .line 150
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabHost:Lamigo/widget/AmigoTabHost;

    new-instance v6, Lamigo/widget/AmigoDateTimePicker$3;

    invoke-direct {v6, p0}, Lamigo/widget/AmigoDateTimePicker$3;-><init>(Lamigo/widget/AmigoDateTimePicker;)V

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 163
    return-void
.end method

.method private initTimePicker()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lamigo/widget/AmigoTimePicker;

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lamigo/widget/AmigoTimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    .line 72
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateTimePicker()V

    .line 73
    return-void
.end method

.method private updateDatePicker()V
    .locals 5

    .prologue
    .line 87
    iget-object v3, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 88
    .local v2, "year":I
    iget-object v3, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 89
    .local v1, "monthOfYear":I
    iget-object v3, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 90
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Lamigo/widget/AmigoDateTimePicker;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lamigo/widget/AmigoDatePicker;->init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V

    .line 91
    return-void
.end method

.method private updateDatePickerTitle()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 206
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;

    iget-object v2, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method private updateTimePicker()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 77
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 78
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoTimePicker;->setOnTimeChangedListener(Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;)V

    .line 79
    return-void
.end method

.method private updateTimePickerTitle()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 211
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;

    iget-object v2, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 216
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 217
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v2, "paint":Landroid/graphics/Paint;
    iget v5, p0, Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabWidget:Lamigo/widget/AmigoTabWidget;

    invoke-virtual {v5}, Lamigo/widget/AmigoTabWidget;->getBottom()I

    move-result v4

    .line 221
    .local v4, "y":I
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mTabWidget:Lamigo/widget/AmigoTabWidget;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lamigo/widget/AmigoTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 222
    .local v1, "padding":I
    iget-object v5, p0, Lamigo/widget/AmigoDateTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    float-to-int v0, v5

    .line 224
    .local v0, "height":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v4, v0

    invoke-virtual {p0}, Lamigo/widget/AmigoDateTimePicker;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v3, v1, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    return-void
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDatePicker()Lamigo/widget/AmigoDatePicker;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mDatePicker:Lamigo/widget/AmigoDatePicker;

    return-object v0
.end method

.method public getTimePicker()Lamigo/widget/AmigoTimePicker;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    return-object v0
.end method

.method public onDateChanged(Lamigo/widget/AmigoDatePicker;III)V
    .locals 2
    .param p1, "view"    # Lamigo/widget/AmigoDatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 192
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 193
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 194
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateDatePickerTitle()V

    .line 195
    return-void
.end method

.method public onTimeChanged(Lamigo/widget/AmigoTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lamigo/widget/AmigoTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 200
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 201
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateTimePickerTitle()V

    .line 202
    return-void
.end method

.method public set24HourFormat(Z)V
    .locals 2
    .param p1, "is24HourFormat"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 247
    return-void
.end method

.method public updateCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const-string v0, "AmigoDateTimePicker"

    const-string v1, "updateDate calendar == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 234
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateDatePicker()V

    .line 235
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateTimePicker()V

    .line 237
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateDatePickerTitle()V

    .line 238
    invoke-direct {p0}, Lamigo/widget/AmigoDateTimePicker;->updateTimePickerTitle()V

    goto :goto_0
.end method
