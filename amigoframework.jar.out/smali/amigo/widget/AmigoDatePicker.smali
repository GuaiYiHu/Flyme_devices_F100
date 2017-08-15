.class public Lamigo/widget/AmigoDatePicker;
.super Landroid/widget/FrameLayout;
.source "AmigoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoDatePicker$SavedState;,
        Lamigo/widget/AmigoDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mHorizontalPadding:I

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthDayLayout:Landroid/widget/LinearLayout;

.field private final mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mVerticalPadding:I

.field private final mYearSpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lamigo/widget/AmigoDatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const v0, 0x9010002

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 124
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "MM/dd/yyyy"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 89
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoDatePicker;->mIsEnabled:Z

    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lamigo/widget/AmigoDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 130
    sget-object v19, Lcom/amigo/internal/R$styleable;->AmigoDatePicker:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 132
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v19, 0x3

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 134
    .local v16, "spinnersShown":Z
    const/16 v19, 0x4

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 136
    .local v7, "calendarViewShown":Z
    const/16 v19, 0x1

    const/16 v20, 0x76c

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 138
    .local v17, "startYear":I
    const/16 v19, 0x2

    const/16 v20, 0x834

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 139
    .local v9, "endYear":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, "minDate":Ljava/lang/String;
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "maxDate":Ljava/lang/String;
    const/16 v19, 0x0

    const v20, 0x9030002

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 143
    .local v11, "layoutResourceId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    const-string v19, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 147
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 149
    new-instance v15, Lamigo/widget/AmigoDatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lamigo/widget/AmigoDatePicker$1;-><init>(Lamigo/widget/AmigoDatePicker;)V

    .line 185
    .local v15, "onChangeListener":Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;
    const v19, 0x90b0009

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x90b000a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    .line 190
    const v19, 0x90b000b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CalendarView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v19, v0

    new-instance v20, Lamigo/widget/AmigoDatePicker$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lamigo/widget/AmigoDatePicker$2;-><init>(Lamigo/widget/AmigoDatePicker;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 200
    const v19, 0x90b000c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    sget-object v20, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v19 .. v21}, Lamigo/widget/AmigoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x9020002

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const v20, 0x90b000d

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x9090015

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "dayUnit":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->isChineseLanguage()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lamigo/widget/AmigoNumberPicker;->setUnit(Ljava/lang/String;I)V

    .line 211
    :cond_0
    const v19, 0x90b000e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mNumberOfMonths:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0xc8

    invoke-virtual/range {v19 .. v21}, Lamigo/widget/AmigoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x9020001

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const v20, 0x90b000d

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 219
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x9090014

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 220
    .local v14, "monthUnit":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->isChineseLanguage()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lamigo/widget/AmigoNumberPicker;->setUnit(Ljava/lang/String;I)V

    .line 226
    :cond_1
    const v19, 0x90b000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v19 .. v21}, Lamigo/widget/AmigoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x9020000

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const v20, 0x90b000d

    invoke-virtual/range {v19 .. v20}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x9090013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "yearUnit":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->isChineseLanguage()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoNumberPicker;->setUnit(Ljava/lang/String;I)V

    .line 237
    :cond_2
    if-nez v16, :cond_5

    if-nez v7, :cond_5

    .line 238
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->setSpinnersShown(Z)V

    .line 245
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->clear()V

    .line 246
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lamigo/widget/AmigoDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 253
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoDatePicker;->setMinDate(J)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->clear()V

    .line 257
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lamigo/widget/AmigoDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 264
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoDatePicker;->setMaxDate(J)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lamigo/widget/AmigoDatePicker;->init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V

    .line 272
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->reorderSpinners()V

    .line 275
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->setContentDescriptions()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x9050012

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x9050013

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoDatePicker;->mHorizontalPadding:I

    .line 284
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mHorizontalPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mHorizontalPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 290
    :goto_3
    return-void

    .line 240
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoDatePicker;->setSpinnersShown(Z)V

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lamigo/widget/AmigoDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 251
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_2

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_3
.end method

.method static synthetic access$000(Lamigo/widget/AmigoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lamigo/widget/AmigoDatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lamigo/widget/AmigoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lamigo/widget/AmigoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lamigo/widget/AmigoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker;

    .prologue
    .line 37
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 510
    :goto_0
    return-object v2

    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 508
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 509
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isChineseLanguage()Z
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 679
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 770
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoDatePicker;->sendAccessibilityEvent(I)V

    .line 771
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mOnDateChangedListener:Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mOnDateChangedListener:Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lamigo/widget/AmigoDatePicker$OnDateChangedListener;->onDateChanged(Lamigo/widget/AmigoDatePicker;III)V

    .line 774
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 670
    :try_start_0
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    const/4 v1, 0x1

    .line 674
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lamigo/widget/AmigoDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 547
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 548
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    .line 549
    .local v3, "order":[C
    array-length v4, v3

    .line 550
    .local v4, "spinnerCount":I
    if-nez v4, :cond_1

    .line 588
    :cond_0
    return-void

    .line 553
    :cond_1
    aget-char v5, v3, v7

    const/16 v6, 0x79

    if-ne v5, v6, :cond_2

    .line 555
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 573
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 574
    aget-char v5, v3, v1

    sparse-switch v5, :sswitch_data_0

    .line 585
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 558
    .end local v1    # "i":I
    :cond_2
    aget-char v5, v3, v7

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_3

    .line 560
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    :goto_2
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 563
    :cond_3
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 564
    .local v2, "monthView":Landroid/view/View;
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 565
    .local v0, "dayView":Landroid/view/View;
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 566
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lamigo/widget/AmigoDatePicker;->mMonthDayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 576
    .end local v0    # "dayView":Landroid/view/View;
    .end local v2    # "monthView":Landroid/view/View;
    .restart local v1    # "i":I
    :sswitch_0
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v5, v4, v1}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    .line 573
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    :sswitch_1
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v5, v4, v1}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    goto :goto_3

    .line 582
    :sswitch_2
    iget-object v5, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v5, v4, v1}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    goto :goto_3

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private reorderSpinners1()V
    .locals 5

    .prologue
    .line 520
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 521
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 522
    .local v1, "order":[C
    array-length v2, v1

    .line 523
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 524
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 541
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 526
    :sswitch_0
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    .line 523
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :sswitch_1
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 532
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    goto :goto_1

    .line 536
    :sswitch_2
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lamigo/widget/AmigoDatePicker;->setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V

    goto :goto_1

    .line 544
    :cond_0
    return-void

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setAlign(Lamigo/widget/AmigoNumberPicker;I)V
    .locals 1
    .param p1, "picker"    # Lamigo/widget/AmigoNumberPicker;
    .param p2, "i"    # I

    .prologue
    .line 592
    if-nez p2, :cond_0

    .line 593
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Lamigo/widget/AmigoNumberPicker;->setAlign(Landroid/graphics/Paint$Align;)V

    .line 596
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 597
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Lamigo/widget/AmigoNumberPicker;->setAlign(Landroid/graphics/Paint$Align;)V

    .line 599
    :cond_1
    return-void
.end method

.method private setContentDescriptions()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 478
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    :cond_0
    return-void

    .line 482
    :cond_1
    iput-object p1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 484
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lamigo/widget/AmigoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 485
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lamigo/widget/AmigoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 486
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lamigo/widget/AmigoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 487
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, p1}, Lamigo/widget/AmigoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 489
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lamigo/widget/AmigoDatePicker;->mNumberOfMonths:I

    .line 490
    iget v2, p0, Lamigo/widget/AmigoDatePicker;->mNumberOfMonths:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lamigo/widget/AmigoDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 491
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x32

    .line 492
    .local v0, "abbrev":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lamigo/widget/AmigoDatePicker;->mNumberOfMonths:I

    if-ge v1, v2, :cond_0

    .line 493
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x0

    invoke-static {v3, v0}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "abbrev":I
    .end local v1    # "i":I
    :cond_2
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 686
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lamigo/widget/AmigoNumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lamigo/widget/AmigoNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 785
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 786
    const/4 v0, 0x5

    .line 790
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x90b000d

    invoke-virtual {p1, v2}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 791
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 792
    return-void

    .line 788
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 813
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 814
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 817
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 742
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 743
    return-void
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 825
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 826
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 827
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 829
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 832
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 833
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 835
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 695
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 697
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 698
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 699
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v7}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 701
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 702
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 723
    :goto_0
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v2}, Lamigo/widget/AmigoNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v3}, Lamigo/widget/AmigoNumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 725
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 729
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 730
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v4}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 733
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 734
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 735
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 736
    return-void

    .line 703
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 705
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 706
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 707
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v7}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 709
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 710
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 712
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v4}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 713
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 714
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v4}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 715
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v7}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 717
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 718
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v4}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 623
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILamigo/widget/AmigoDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    .prologue
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoDatePicker;->setDate(III)V

    .line 653
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    .line 654
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    .line 655
    iput-object p4, p0, Lamigo/widget/AmigoDatePicker;->mOnDateChangedListener:Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    .line 656
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lamigo/widget/AmigoDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 414
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v1, p0, Lamigo/widget/AmigoDatePicker;->mHorizontalPadding:I

    iget v2, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    iget v3, p0, Lamigo/widget/AmigoDatePicker;->mHorizontalPadding:I

    iget v4, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 422
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 423
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v1, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    iget v2, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    iget v3, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    iget v4, p0, Lamigo/widget/AmigoDatePicker;->mVerticalPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 401
    const-class v0, Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 402
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 407
    const-class v0, Lamigo/widget/AmigoDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 392
    const/16 v0, 0x14

    .line 393
    .local v0, "flags":I
    iget-object v2, p0, Lamigo/widget/AmigoDatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 633
    move-object v0, p1

    check-cast v0, Lamigo/widget/AmigoDatePicker$SavedState;

    .line 634
    .local v0, "ss":Lamigo/widget/AmigoDatePicker$SavedState;
    invoke-virtual {v0}, Lamigo/widget/AmigoDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 635
    # getter for: Lamigo/widget/AmigoDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lamigo/widget/AmigoDatePicker$SavedState;->access$1100(Lamigo/widget/AmigoDatePicker$SavedState;)I

    move-result v1

    # getter for: Lamigo/widget/AmigoDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lamigo/widget/AmigoDatePicker$SavedState;->access$1200(Lamigo/widget/AmigoDatePicker$SavedState;)I

    move-result v2

    # getter for: Lamigo/widget/AmigoDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lamigo/widget/AmigoDatePicker$SavedState;->access$1300(Lamigo/widget/AmigoDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lamigo/widget/AmigoDatePicker;->setDate(III)V

    .line 636
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    .line 637
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    .line 638
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 627
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 628
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lamigo/widget/AmigoDatePicker$SavedState;

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lamigo/widget/AmigoDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILamigo/widget/AmigoDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 451
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 452
    return-void

    .line 451
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    iget-boolean v0, p0, Lamigo/widget/AmigoDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 374
    iput-boolean p1, p0, Lamigo/widget/AmigoDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 351
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 357
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    .line 361
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 314
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 315
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 320
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 321
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 323
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    .line 325
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setOnDateChangedListener(Lamigo/widget/AmigoDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    .prologue
    .line 659
    iput-object p1, p0, Lamigo/widget/AmigoDatePicker;->mOnDateChangedListener:Lamigo/widget/AmigoDatePicker$OnDateChangedListener;

    .line 660
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 469
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    return-void

    .line 469
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoDatePicker;->setDate(III)V

    .line 614
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateSpinners()V

    .line 615
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->updateCalendarView()V

    .line 616
    invoke-direct {p0}, Lamigo/widget/AmigoDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
