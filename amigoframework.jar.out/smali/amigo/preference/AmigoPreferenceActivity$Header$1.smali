.class final Lamigo/preference/AmigoPreferenceActivity$Header$1;
.super Ljava/lang/Object;
.source "AmigoPreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceActivity$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lamigo/preference/AmigoPreferenceActivity$Header;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 484
    new-instance v0, Lamigo/preference/AmigoPreferenceActivity$Header;

    invoke-direct {v0, p1}, Lamigo/preference/AmigoPreferenceActivity$Header;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity$Header$1;->createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lamigo/preference/AmigoPreferenceActivity$Header;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 487
    new-array v0, p1, [Lamigo/preference/AmigoPreferenceActivity$Header;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity$Header$1;->newArray(I)[Lamigo/preference/AmigoPreferenceActivity$Header;

    move-result-object v0

    return-object v0
.end method
