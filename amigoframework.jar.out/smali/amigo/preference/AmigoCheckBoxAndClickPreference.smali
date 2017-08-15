.class public Lamigo/preference/AmigoCheckBoxAndClickPreference;
.super Lamigo/preference/AmigoCheckBoxPreference;
.source "AmigoCheckBoxAndClickPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;
    }
.end annotation


# instance fields
.field private mImageView:Landroid/view/View;

.field private mPreferenceClickListener:Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

.field private mRBtnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lamigo/preference/AmigoCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const v0, 0x903002a

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->setLayoutResource(I)V

    .line 18
    const v0, 0x9030039

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->setWidgetLayoutResource(I)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoCheckBoxAndClickPreference;

    .prologue
    .line 9
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mRBtnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoCheckBoxAndClickPreference;

    .prologue
    .line 9
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mPreferenceClickListener:Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lamigo/preference/AmigoCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 32
    const v0, 0x90b0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mImageView:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mImageView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mImageView:Landroid/view/View;

    new-instance v1, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;

    invoke-direct {v1, p0}, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;-><init>(Lamigo/preference/AmigoCheckBoxAndClickPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setRBtnOnClickListener(Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;)V
    .locals 0
    .param p1, "listener"    # Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

    .prologue
    .line 56
    iput-object p1, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mPreferenceClickListener:Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

    .line 57
    return-void
.end method

.method public setRBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iput-object p1, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference;->mRBtnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method
