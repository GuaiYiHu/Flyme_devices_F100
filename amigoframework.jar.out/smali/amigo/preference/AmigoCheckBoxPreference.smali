.class public Lamigo/preference/AmigoCheckBoxPreference;
.super Lamigo/preference/AmigoTwoStatePreference;
.source "AmigoCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lamigo/preference/AmigoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 30
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 31
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 29
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 36
    :pswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 39
    :pswitch_2
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setDisableDependentsState(Z)V

    goto :goto_1

    .line 43
    .end local v2    # "id":I
    :cond_0
    const v3, 0x903002b

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 56
    .end local v1    # "i":I
    :goto_2
    return-void

    .line 46
    :cond_1
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoCheckBoxPreference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 50
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoCheckBoxPreference;->setDisableDependentsState(Z)V

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x10101ef
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lamigo/preference/AmigoTwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 72
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lamigo/preference/AmigoCheckBoxPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoCheckBoxPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoCheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    .line 77
    return-void
.end method
