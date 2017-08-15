.class public Lamigo/widget/AmigoTimePicker;
.super Landroid/widget/FrameLayout;
.source "AmigoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoTimePicker$SavedState;,
        Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHorizontalPadding:I

.field private final mHourSpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mVerticalPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lamigo/widget/AmigoTimePicker$1;

    invoke-direct {v0}, Lamigo/widget/AmigoTimePicker$1;-><init>()V

    sput-object v0, Lamigo/widget/AmigoTimePicker;->NO_OP_CHANGE_LISTENER:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const v0, 0x9010003

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v6, 0x0

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mDivider:Landroid/widget/TextView;

    .line 73
    const/4 v6, 0x1

    iput-boolean v6, p0, Lamigo/widget/AmigoTimePicker;->mIsEnabled:Z

    .line 114
    iput-object p1, p0, Lamigo/widget/AmigoTimePicker;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lamigo/widget/AmigoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 120
    sget-object v6, Lcom/amigo/internal/R$styleable;->AmigoTimePicker:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 122
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const v7, 0x9030005

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 124
    .local v4, "layoutResourceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 128
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x1

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    const v6, 0x90b0062

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9050012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    .line 134
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9050013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lamigo/widget/AmigoTimePicker;->mHorizontalPadding:I

    .line 135
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 136
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v7, p0, Lamigo/widget/AmigoTimePicker;->mHorizontalPadding:I

    iget v8, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v9, p0, Lamigo/widget/AmigoTimePicker;->mHorizontalPadding:I

    iget v10, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    :goto_0
    const v6, 0x90b0017

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lamigo/widget/AmigoNumberPicker;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 144
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x9020000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    new-instance v7, Lamigo/widget/AmigoTimePicker$2;

    invoke-direct {v7, p0}, Lamigo/widget/AmigoTimePicker$2;-><init>(Lamigo/widget/AmigoTimePicker;)V

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 158
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9090016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "hourUnit":Ljava/lang/String;
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v2, v7}, Lamigo/widget/AmigoNumberPicker;->setUnit(Ljava/lang/String;I)V

    .line 160
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const v7, 0x90b000d

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 161
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 170
    const v6, 0x90b0018

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lamigo/widget/AmigoNumberPicker;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 171
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 172
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 173
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Lamigo/widget/AmigoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 174
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    sget-object v7, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    .line 175
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    new-instance v7, Lamigo/widget/AmigoTimePicker$3;

    invoke-direct {v7, p0}, Lamigo/widget/AmigoTimePicker$3;-><init>(Lamigo/widget/AmigoTimePicker;)V

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 198
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x9090017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "minuteUnit":Ljava/lang/String;
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lamigo/widget/AmigoNumberPicker;->setUnit(Ljava/lang/String;I)V

    .line 200
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    const v7, 0x90b000d

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 201
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 204
    new-instance v6, Ljava/text/DateFormatSymbols;

    invoke-direct {v6}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 207
    const v6, 0x90b0019

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "amPmView":Landroid/view/View;
    instance-of v6, v0, Landroid/widget/Button;

    if-eqz v6, :cond_2

    .line 209
    const/4 v6, 0x0

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 210
    const/4 v6, 0x0

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 211
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 212
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v7, Lamigo/widget/AmigoTimePicker$4;

    invoke-direct {v7, p0}, Lamigo/widget/AmigoTimePicker$4;-><init>(Lamigo/widget/AmigoTimePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :goto_1
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateHourControl()V

    .line 242
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V

    .line 244
    sget-object v6, Lamigo/widget/AmigoTimePicker;->NO_OP_CHANGE_LISTENER:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->setOnTimeChangedListener(Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;)V

    .line 247
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 248
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 250
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 251
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoTimePicker;->setEnabled(Z)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->setContentDescriptions()V

    .line 261
    return-void

    .line 138
    .end local v2    # "hourUnit":Ljava/lang/String;
    .end local v5    # "minuteUnit":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v7, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v8, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v9, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v10, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 221
    .restart local v0    # "amPmView":Landroid/view/View;
    .restart local v2    # "hourUnit":Ljava/lang/String;
    .restart local v5    # "minuteUnit":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 222
    check-cast v0, Lamigo/widget/AmigoNumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    .line 223
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 224
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 225
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    iget-object v7, p0, Lamigo/widget/AmigoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x9020002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    new-instance v7, Lamigo/widget/AmigoTimePicker$5;

    invoke-direct {v7, p0}, Lamigo/widget/AmigoTimePicker$5;-><init>(Lamigo/widget/AmigoTimePicker;)V

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V

    .line 236
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    const v7, 0x90b000d

    invoke-virtual {v6, v7}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 237
    iget-object v6, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lamigo/widget/AmigoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lamigo/widget/AmigoTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    iget-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lamigo/widget/AmigoTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lamigo/widget/AmigoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lamigo/widget/AmigoTimePicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTimePicker;

    .prologue
    .line 30
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 555
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoTimePicker;->sendAccessibilityEvent(I)V

    .line 556
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mOnTimeChangedListener:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mOnTimeChangedListener:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;->onTimeChanged(Lamigo/widget/AmigoTimePicker;II)V

    .line 559
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 308
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 312
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 582
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 586
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoNumberPicker;->setVisibility(I)V

    .line 530
    :goto_0
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_0
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTimePicker;->sendAccessibilityEvent(I)V

    .line 552
    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-boolean v2, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    if-eqz v2, :cond_3

    move v0, v1

    .line 537
    .local v0, "index":I
    :goto_2
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    if-eqz v2, :cond_4

    .line 538
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v2, v0}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 539
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoNumberPicker;->setVisibility(I)V

    .line 545
    :goto_3
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoNumberPicker;->setSelectionSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 536
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 541
    .restart local v0    # "index":I
    :cond_4
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lamigo/widget/AmigoTimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 511
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 513
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 514
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    sget-object v1, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 517
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 518
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 595
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 598
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 601
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 602
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 604
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0}, Lamigo/widget/AmigoNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1}, Lamigo/widget/AmigoNumberPicker;->getValue()I

    move-result v0

    .line 391
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    .line 393
    :cond_0
    iget-boolean v1, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 394
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0}, Lamigo/widget/AmigoNumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isAm()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v1, p0, Lamigo/widget/AmigoTimePicker;->mHorizontalPadding:I

    iget v2, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v3, p0, Lamigo/widget/AmigoTimePicker;->mHorizontalPadding:I

    iget v4, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 299
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 300
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget v1, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v2, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v3, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    iget v4, p0, Lamigo/widget/AmigoTimePicker;->mVerticalPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 501
    const-class v0, Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 507
    const-class v0, Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 485
    const/4 v0, 0x1

    .line 486
    .local v0, "flags":I
    iget-boolean v2, p0, Lamigo/widget/AmigoTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 487
    or-int/lit16 v0, v0, 0x80

    .line 491
    :goto_0
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 492
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 493
    iget-object v2, p0, Lamigo/widget/AmigoTimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lamigo/widget/AmigoTimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    return-void

    .line 489
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 371
    move-object v0, p1

    check-cast v0, Lamigo/widget/AmigoTimePicker$SavedState;

    .line 372
    .local v0, "ss":Lamigo/widget/AmigoTimePicker$SavedState;
    invoke-virtual {v0}, Lamigo/widget/AmigoTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 373
    invoke-virtual {v0}, Lamigo/widget/AmigoTimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 374
    invoke-virtual {v0}, Lamigo/widget/AmigoTimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 375
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 366
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lamigo/widget/AmigoTimePicker$SavedState;

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lamigo/widget/AmigoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILamigo/widget/AmigoTimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 405
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    .line 412
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 413
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 421
    :cond_2
    :goto_1
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V

    .line 423
    :cond_3
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 424
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->onTimeChanged()V

    goto :goto_0

    .line 416
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsAm:Z

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 463
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 467
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 265
    iget-boolean v0, p0, Lamigo/widget/AmigoTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 273
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mAmPmSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setEnabled(Z)V

    .line 279
    :goto_1
    iput-boolean p1, p0, Lamigo/widget/AmigoTimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setHourDelta(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 623
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->mDelta(I)V

    goto :goto_0
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 433
    iget-boolean v1, p0, Lamigo/widget/AmigoTimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 443
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lamigo/widget/AmigoTimePicker;->mIs24HourView:Z

    .line 438
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 439
    .local v0, "currentHour":I
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateHourControl()V

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 442
    invoke-direct {p0}, Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setMaxHour(I)V
    .locals 2
    .param p1, "maxValue"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 661
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 662
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    sget-object v1, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 666
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 667
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    goto :goto_0
.end method

.method public setMaxMinute(I)V
    .locals 1
    .param p1, "maxValue"    # I

    .prologue
    .line 638
    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    .line 639
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMaxValue(I)V

    .line 641
    :cond_0
    return-void
.end method

.method public setMinHour(I)V
    .locals 2
    .param p1, "minValue"    # I

    .prologue
    .line 644
    invoke-virtual {p0}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-gt p1, v0, :cond_0

    .line 646
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 647
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    sget-object v1, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 651
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 652
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoNumberPicker;->setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V

    goto :goto_0
.end method

.method public setMinMinute(I)V
    .locals 1
    .param p1, "minValue"    # I

    .prologue
    .line 632
    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_0

    .line 633
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->setMinValue(I)V

    .line 635
    :cond_0
    return-void
.end method

.method public setMinuteDelta(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 614
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoNumberPicker;->mDelta(I)V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    .prologue
    .line 383
    iput-object p1, p0, Lamigo/widget/AmigoTimePicker;->mOnTimeChangedListener:Lamigo/widget/AmigoTimePicker$OnTimeChangedListener;

    .line 384
    return-void
.end method
