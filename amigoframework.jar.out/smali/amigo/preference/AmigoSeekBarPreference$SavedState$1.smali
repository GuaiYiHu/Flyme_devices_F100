.class final Lamigo/preference/AmigoSeekBarPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AmigoSeekBarPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoSeekBarPreference$SavedState;
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
        "Lamigo/preference/AmigoSeekBarPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoSeekBarPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 229
    new-instance v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;

    invoke-direct {v0, p1}, Lamigo/preference/AmigoSeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSeekBarPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoSeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lamigo/preference/AmigoSeekBarPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 233
    new-array v0, p1, [Lamigo/preference/AmigoSeekBarPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSeekBarPreference$SavedState$1;->newArray(I)[Lamigo/preference/AmigoSeekBarPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
