.class public Lamigo/preference/AmigoPreference;
.super Ljava/lang/Object;
.source "AmigoPreference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lamigo/preference/OnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreference$BaseSavedState;,
        Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;,
        Lamigo/preference/AmigoPreference$OnPreferenceClickListener;,
        Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lamigo/preference/AmigoPreference;",
        ">;",
        "Lamigo/preference/OnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mShowDivider:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 224
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    .line 65
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    .line 66
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    .line 68
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    .line 71
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mDependencyMet:Z

    .line 72
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mParentDependencyMet:Z

    .line 73
    iput-boolean v1, p0, Lamigo/preference/AmigoPreference;->mShowDivider:Z

    .line 77
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    .line 79
    const v0, 0x903000a

    iput v0, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    .line 81
    iput-boolean v1, p0, Lamigo/preference/AmigoPreference;->mHasSpecifiedLayout:Z

    .line 168
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;->AnalyzeNativePreferenceAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amigo.preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mHasSpecifiedLayout:Z

    .line 182
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;->AnalyzeAmigoPreferenceAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto :goto_0
.end method

.method private AnalyzeAmigoPreferenceAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1848
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoPreference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1850
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_e

    .line 1851
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1852
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 1853
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoPreference;->mIconResId:I

    .line 1850
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1854
    :cond_1
    if-ne v1, v4, :cond_2

    .line 1855
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 1856
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1857
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoPreference;->mTitleRes:I

    .line 1858
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1859
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1860
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1861
    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1862
    iget v3, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    goto :goto_1

    .line 1863
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_6

    .line 1864
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 1865
    :cond_6
    const/4 v3, 0x6

    if-ne v1, v3, :cond_7

    .line 1866
    iget v3, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    goto :goto_1

    .line 1867
    :cond_7
    const/4 v3, 0x7

    if-ne v1, v3, :cond_8

    .line 1868
    iget v3, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 1869
    :cond_8
    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    .line 1870
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    goto :goto_1

    .line 1871
    :cond_9
    const/16 v3, 0x9

    if-ne v1, v3, :cond_a

    .line 1872
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    goto :goto_1

    .line 1873
    :cond_a
    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 1874
    iget-boolean v3, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    goto :goto_1

    .line 1875
    :cond_b
    const/16 v3, 0xa

    if-ne v1, v3, :cond_c

    .line 1876
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 1877
    :cond_c
    const/16 v3, 0xc

    if-ne v1, v3, :cond_d

    .line 1878
    invoke-virtual {p0, v0, v1}, Lamigo/preference/AmigoPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoPreference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1879
    :cond_d
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 1880
    iget-boolean v3, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 1883
    .end local v1    # "attr":I
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1884
    return-void
.end method

.method private AnalyzeNativePreferenceAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 1785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1786
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    .line 1787
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 1785
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1789
    :sswitch_1
    const/4 v2, 0x0

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    iput v2, p0, Lamigo/preference/AmigoPreference;->mIconResId:I

    goto :goto_1

    .line 1793
    :sswitch_2
    invoke-static {p1, p2, v0}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 1797
    :sswitch_3
    invoke-static {p1, p2, v0}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1801
    :sswitch_4
    invoke-static {p1, p2, v0}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1805
    :sswitch_5
    iget v2, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    iput v2, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    goto :goto_1

    .line 1809
    :sswitch_6
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 1813
    :sswitch_7
    iget v2, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    iput v2, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    goto :goto_1

    .line 1817
    :sswitch_8
    iget v2, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    iput v2, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 1821
    :sswitch_9
    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    goto :goto_1

    .line 1825
    :sswitch_a
    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    goto :goto_1

    .line 1829
    :sswitch_b
    iget-boolean v2, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    goto :goto_1

    .line 1833
    :sswitch_c
    invoke-static {p1, p2, v0}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 1841
    :sswitch_d
    iget-boolean v2, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    goto :goto_1

    .line 1845
    .end local v1    # "id":I
    :cond_0
    return-void

    .line 1787
    nop

    :sswitch_data_0
    .sparse-switch
        0x1010002 -> :sswitch_1
        0x101000d -> :sswitch_b
        0x101000e -> :sswitch_9
        0x10100f2 -> :sswitch_7
        0x10101e1 -> :sswitch_3
        0x10101e6 -> :sswitch_a
        0x10101e8 -> :sswitch_2
        0x10101e9 -> :sswitch_4
        0x10101ea -> :sswitch_5
        0x10101eb -> :sswitch_8
        0x10101ec -> :sswitch_c
        0x10101ed -> :sswitch_0
        0x10101ee -> :sswitch_d
        0x10102e3 -> :sswitch_6
    .end sparse-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1291
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    .line 1292
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1293
    :cond_0
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1294
    const/4 v1, 0x0

    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lamigo/preference/AmigoPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1299
    :cond_1
    :goto_0
    return-void

    .line 1297
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lamigo/preference/AmigoPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1109
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    .line 1112
    .local v0, "preference":Lamigo/preference/AmigoPreference;
    if-eqz v0, :cond_1

    .line 1113
    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreference;->registerDependent(Lamigo/preference/AmigoPreference;)V

    goto :goto_0

    .line 1115
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lamigo/preference/AmigoPreference;)V
    .locals 1
    .param p1, "dependent"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 1157
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    .line 1161
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lamigo/preference/AmigoPreference;->onDependencyChanged(Lamigo/preference/AmigoPreference;Z)V

    .line 1164
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 511
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 513
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 514
    check-cast v1, Landroid/view/ViewGroup;

    .line 515
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 516
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lamigo/preference/AmigoPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 515
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 519
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1322
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v1}, Lamigo/preference/AmigoPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1324
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1121
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    .line 1123
    .local v0, "oldDependency":Lamigo/preference/AmigoPreference;
    if-eqz v0, :cond_0

    .line 1124
    invoke-direct {v0, p0}, Lamigo/preference/AmigoPreference;->unregisterDependent(Lamigo/preference/AmigoPreference;)V

    .line 1127
    .end local v0    # "oldDependency":Lamigo/preference/AmigoPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lamigo/preference/AmigoPreference;)V
    .locals 1
    .param p1, "dependent"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 1175
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1178
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 853
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mOnChangeListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mOnChangeListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;->onPreferenceChange(Lamigo/preference/AmigoPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lamigo/preference/AmigoPreference;)I
    .locals 2
    .param p1, "another"    # Lamigo/preference/AmigoPreference;

    .prologue
    const v1, 0x7fffffff

    .line 1028
    iget v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lamigo/preference/AmigoPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1031
    :cond_0
    iget v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    iget v1, p1, Lamigo/preference/AmigoPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1038
    :goto_0
    return v0

    .line 1032
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1033
    const/4 v0, 0x1

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v0, p1, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1035
    const/4 v0, -0x1

    goto :goto_0

    .line 1038
    :cond_3
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/amigo/internal/util/AmigoCharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lamigo/preference/AmigoPreference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreference;->compareTo(Lamigo/preference/AmigoPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1728
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1729
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1730
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1731
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    .line 1732
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1733
    iget-boolean v1, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1734
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1739
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1675
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1676
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    .line 1677
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1678
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1679
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1682
    :cond_0
    if-eqz v0, :cond_1

    .line 1683
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1686
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    const/4 v0, 0x0

    .line 1144
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0, p1}, Lamigo/preference/AmigoPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1001
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoPreference;->mExtras:Landroid/os/Bundle;

    .line 299
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1637
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1638
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1639
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1641
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1642
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1645
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1649
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 750
    iget-wide v0, p0, Lamigo/preference/AmigoPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mOnChangeListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lamigo/preference/AmigoPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mOnClickListener:Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1608
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1520
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1476
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1564
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1377
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1381
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1432
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1436
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 974
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lamigo/preference/AmigoPreference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    invoke-virtual {p0, p2}, Lamigo/preference/AmigoPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreference;->onBindView(Landroid/view/View;)V

    .line 386
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1616
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 694
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lamigo/preference/AmigoPreference;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1188
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mDependents:Ljava/util/List;

    .line 1190
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    if-nez v0, :cond_1

    .line 1198
    :cond_0
    return-void

    .line 1194
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1195
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1196
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lamigo/preference/AmigoPreference;

    invoke-virtual {v3, p0, p1}, Lamigo/preference/AmigoPreference;->onDependencyChanged(Lamigo/preference/AmigoPreference;Z)V

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lamigo/preference/AmigoPreference;)V

    .line 1070
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Lamigo/preference/AmigoPreference;->registerDependency()V

    .line 1105
    return-void
.end method

.method protected onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lamigo/preference/AmigoPreferenceManager;

    .prologue
    .line 1088
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    .line 1090
    invoke-virtual {p1}, Lamigo/preference/AmigoPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/preference/AmigoPreference;->mId:J

    .line 1092
    invoke-direct {p0}, Lamigo/preference/AmigoPreference;->dispatchSetInitialValue()V

    .line 1093
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 453
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 455
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 456
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 457
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 458
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 467
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 468
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 469
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 470
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 478
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 479
    iget v6, p0, Lamigo/preference/AmigoPreference;->mIconResId:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 480
    :cond_2
    iget-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 481
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v9, p0, Lamigo/preference/AmigoPreference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 483
    :cond_3
    iget-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 484
    iget-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    :cond_4
    iget-object v6, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :cond_5
    iget-boolean v6, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    if-eqz v6, :cond_6

    .line 491
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->isEnabled()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Lamigo/preference/AmigoPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 494
    :cond_6
    const/4 v0, 0x0

    .line 495
    .local v0, "dividerView":Landroid/widget/ImageView;
    const v6, 0x90b0043

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "dividerView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 496
    .restart local v0    # "dividerView":Landroid/widget/ImageView;
    if-nez v0, :cond_a

    .line 505
    :goto_3
    return-void

    .line 461
    .end local v0    # "dividerView":Landroid/widget/ImageView;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 473
    .end local v4    # "title":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_8
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .end local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_9
    move v6, v8

    .line 487
    goto :goto_2

    .line 499
    .restart local v0    # "dividerView":Landroid/widget/ImageView;
    :cond_a
    iget-boolean v6, p0, Lamigo/preference/AmigoPreference;->mShowDivider:Z

    if-eqz v6, :cond_b

    .line 500
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 502
    :cond_b
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 407
    iget-object v7, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 410
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    iget v7, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    invoke-virtual {v5, v7, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 412
    .local v4, "layout":Landroid/view/View;
    const v7, 0x1020018

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 414
    .local v6, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 415
    iget v7, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    if-eqz v7, :cond_3

    .line 416
    iget v7, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 423
    :cond_0
    :goto_0
    iget-object v7, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 424
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v3, "lParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x50

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 428
    const v7, 0x90b0066

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 429
    .local v0, "dividerContainer":Landroid/view/ViewGroup;
    const v7, 0x903003c

    invoke-virtual {v2, v7, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 431
    .local v1, "imgview":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    :cond_1
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 436
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 438
    :cond_2
    return-object v4

    .line 418
    .end local v0    # "dividerContainer":Landroid/view/ViewGroup;
    .end local v1    # "imgview":Landroid/widget/ImageView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lamigo/preference/AmigoPreference;Z)V
    .locals 1
    .param p1, "dependency"    # Lamigo/preference/AmigoPreference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1207
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1208
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mDependencyMet:Z

    .line 1211
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->notifyDependencyChange(Z)V

    .line 1213
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 1215
    :cond_0
    return-void

    .line 1208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lamigo/preference/AmigoPreference;Z)V
    .locals 1
    .param p1, "parent"    # Lamigo/preference/AmigoPreference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1224
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1225
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mParentDependencyMet:Z

    .line 1228
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->notifyDependencyChange(Z)V

    .line 1230
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 1232
    :cond_0
    return-void

    .line 1225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Lamigo/preference/AmigoPreference;->unregisterDependency()V

    .line 1276
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    .line 1753
    sget-object v0, Lamigo/preference/AmigoPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1754
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1756
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mBaseMethodCalled:Z

    .line 1702
    sget-object v0, Lamigo/preference/AmigoPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1319
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lamigo/preference/AmigoPreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Lamigo/preference/AmigoPreferenceScreen;

    .prologue
    .line 903
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->onClick()V

    .line 909
    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mOnClickListener:Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mOnClickListener:Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lamigo/preference/AmigoPreference$OnPreferenceClickListener;->onPreferenceClick(Lamigo/preference/AmigoPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 913
    :cond_2
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v2

    .line 914
    .local v2, "preferenceManager":Lamigo/preference/AmigoPreferenceManager;
    if-eqz v2, :cond_3

    .line 915
    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getOnPreferenceTreeClickListener()Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 917
    .local v1, "listener":Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lamigo/preference/AmigoPreferenceScreen;Lamigo/preference/AmigoPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    .end local v1    # "listener":Lamigo/preference/AmigoPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 924
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 925
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lamigo/preference/AmigoPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1582
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1583
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lamigo/preference/AmigoPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1593
    :goto_0
    return v2

    .line 1588
    :cond_1
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v1}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1589
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1590
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1593
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1494
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1495
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Lamigo/preference/AmigoPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1505
    :goto_0
    return v1

    .line 1500
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1501
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1502
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1505
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1450
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1451
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lamigo/preference/AmigoPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1461
    :goto_0
    return v1

    .line 1456
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1458
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1461
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1538
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1539
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lamigo/preference/AmigoPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1549
    :goto_0
    return v1

    .line 1544
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1545
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1546
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1549
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1348
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lamigo/preference/AmigoPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1360
    :goto_0
    return v1

    .line 1355
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1356
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1357
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1360
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1400
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1402
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lamigo/preference/AmigoPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    :goto_0
    return v1

    .line 1407
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1408
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1409
    invoke-direct {p0, v0}, Lamigo/preference/AmigoPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1412
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mRequiresKey:Z

    .line 799
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1714
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1715
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1661
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1662
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1286
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1287
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1252
    invoke-direct {p0}, Lamigo/preference/AmigoPreference;->unregisterDependency()V

    .line 1255
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mDependencyKey:Ljava/lang/String;

    .line 1256
    invoke-direct {p0}, Lamigo/preference/AmigoPreference;->registerDependency()V

    .line 1257
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 678
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 679
    iput-boolean p1, p0, Lamigo/preference/AmigoPreference;->mEnabled:Z

    .line 682
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->notifyDependencyChange(Z)V

    .line 684
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 686
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mFragment:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 625
    iput p1, p0, Lamigo/preference/AmigoPreference;->mIconResId:I

    .line 626
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 611
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 612
    :cond_1
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 614
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 616
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mIntent:Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 769
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mKey:Ljava/lang/String;

    .line 771
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->requireKey()V

    .line 774
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 325
    iget v0, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mHasSpecifiedLayout:Z

    .line 329
    :cond_0
    iput p1, p0, Lamigo/preference/AmigoPreference;->mLayoutResId:I

    .line 330
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1049
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeInternalListener;

    .line 1050
    return-void
.end method

.method public setOnPreferenceChangeListener(Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

    .prologue
    .line 863
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mOnChangeListener:Lamigo/preference/AmigoPreference$OnPreferenceChangeListener;

    .line 864
    return-void
.end method

.method public setOnPreferenceClickListener(Lamigo/preference/AmigoPreference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

    .prologue
    .line 882
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mOnClickListener:Lamigo/preference/AmigoPreference$OnPreferenceClickListener;

    .line 883
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 535
    iget v0, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 536
    iput p1, p0, Lamigo/preference/AmigoPreference;->mOrder:I

    .line 539
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyHierarchyChanged()V

    .line 541
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 841
    iput-boolean p1, p0, Lamigo/preference/AmigoPreference;->mPersistent:Z

    .line 842
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 703
    iget-boolean v0, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 704
    iput-boolean p1, p0, Lamigo/preference/AmigoPreference;->mSelectable:Z

    .line 705
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 707
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 730
    iput-boolean p1, p0, Lamigo/preference/AmigoPreference;->mShouldDisableView:Z

    .line 731
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 732
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0
    .param p1, "showDivider"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lamigo/preference/AmigoPreference;->mShowDivider:Z

    .line 391
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 669
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 655
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    :cond_1
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mSummary:Ljava/lang/CharSequence;

    .line 657
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 659
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 578
    iput p1, p0, Lamigo/preference/AmigoPreference;->mTitleRes:I

    .line 579
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 563
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lamigo/preference/AmigoPreference;->mTitleRes:I

    .line 565
    iput-object p1, p0, Lamigo/preference/AmigoPreference;->mTitle:Ljava/lang/CharSequence;

    .line 566
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->notifyChanged()V

    .line 568
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 352
    iget v0, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoPreference;->mHasSpecifiedLayout:Z

    .line 356
    :cond_0
    iput p1, p0, Lamigo/preference/AmigoPreference;->mWidgetLayoutResId:I

    .line 357
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x0

    .line 1017
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1241
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lamigo/preference/AmigoPreference;->mPreferenceManager:Lamigo/preference/AmigoPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1621
    invoke-virtual {p0}, Lamigo/preference/AmigoPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
