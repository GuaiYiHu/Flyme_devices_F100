.class public Lamigo/preference/AmigoPreferenceCategory;
.super Lamigo/preference/AmigoPreferenceGroup;
.source "AmigoPreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareAddPreference(Lamigo/preference/AmigoPreference;)Z
    .locals 2
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 40
    instance-of v0, p1, Lamigo/preference/AmigoPreferenceCategory;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->onPrepareAddPreference(Lamigo/preference/AmigoPreference;)Z

    move-result v0

    return v0
.end method
