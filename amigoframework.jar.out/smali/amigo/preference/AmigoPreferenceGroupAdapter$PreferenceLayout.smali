.class Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "AmigoPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/preference/AmigoPreferenceGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/preference/AmigoPreferenceGroupAdapter$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)I
    .locals 3
    .param p1, "other"    # Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 65
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v2, p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "compareNames":I
    if-nez v0, :cond_0

    .line 67
    iget v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v1, v2, :cond_2

    .line 68
    iget v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v1, v2, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 77
    .end local v0    # "compareNames":I
    :cond_0
    :goto_0
    return v0

    .line 71
    .restart local v0    # "compareNames":I
    :cond_1
    iget v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 74
    :cond_2
    iget v1, p0, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->resId:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;->compareTo(Lamigo/preference/AmigoPreferenceGroupAdapter$PreferenceLayout;)I

    move-result v0

    return v0
.end method
