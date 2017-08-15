.class public Lamigo/preference/AmigoSwitchPreference;
.super Lamigo/preference/AmigoTwoStatePreference;
.source "AmigoSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoSwitchPreference$1;,
        Lamigo/preference/AmigoSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lamigo/preference/AmigoSwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lamigo/preference/AmigoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v3, Lamigo/preference/AmigoSwitchPreference$Listener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lamigo/preference/AmigoSwitchPreference$Listener;-><init>(Lamigo/preference/AmigoSwitchPreference;Lamigo/preference/AmigoSwitchPreference$1;)V

    iput-object v3, p0, Lamigo/preference/AmigoSwitchPreference;->mListener:Lamigo/preference/AmigoSwitchPreference$Listener;

    .line 56
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 59
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 60
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :pswitch_0
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :pswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :pswitch_2
    invoke-interface {p2, v1, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setDisableDependentsState(Z)V

    goto :goto_1

    .line 72
    .end local v2    # "id":I
    :cond_0
    const v3, 0x909000c

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOn(I)V

    .line 73
    const v3, 0x909000d

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOff(I)V

    .line 74
    const v3, 0x903002d

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setWidgetLayoutResource(I)V

    .line 91
    .end local v1    # "i":I
    :goto_2
    return-void

    .line 77
    :cond_1
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoSwitchPreference:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoSwitchPreference;->setDisableDependentsState(Z)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x10101ef
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lamigo/preference/AmigoTwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 116
    const v2, 0x90b0029

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 120
    instance-of v2, v0, Lamigo/widget/AmigoSwitch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 121
    check-cast v1, Lamigo/widget/AmigoSwitch;

    .line 122
    .local v1, "switchView":Lamigo/widget/AmigoSwitch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Lamigo/widget/AmigoSwitch;
    :cond_0
    move-object v2, v0

    .line 125
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lamigo/preference/AmigoSwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 127
    instance-of v2, v0, Lamigo/widget/AmigoSwitch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 128
    check-cast v1, Lamigo/widget/AmigoSwitch;

    .line 129
    .restart local v1    # "switchView":Lamigo/widget/AmigoSwitch;
    iget-object v2, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lamigo/preference/AmigoSwitchPreference;->mListener:Lamigo/preference/AmigoSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    .end local v1    # "switchView":Lamigo/widget/AmigoSwitch;
    :cond_1
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lamigo/preference/AmigoSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    iput-object p1, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lamigo/preference/AmigoSwitchPreference;->notifyChanged()V

    .line 168
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lamigo/preference/AmigoSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 155
    iput-object p1, p0, Lamigo/preference/AmigoSwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {p0}, Lamigo/preference/AmigoSwitchPreference;->notifyChanged()V

    .line 157
    return-void
.end method
