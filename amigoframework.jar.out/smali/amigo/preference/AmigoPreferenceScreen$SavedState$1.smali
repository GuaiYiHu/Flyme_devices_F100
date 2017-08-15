.class final Lamigo/preference/AmigoPreferenceScreen$SavedState$1;
.super Ljava/lang/Object;
.source "AmigoPreferenceScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceScreen$SavedState;
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
        "Lamigo/preference/AmigoPreferenceScreen$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoPreferenceScreen$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 274
    new-instance v0, Lamigo/preference/AmigoPreferenceScreen$SavedState;

    invoke-direct {v0, p1}, Lamigo/preference/AmigoPreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceScreen$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lamigo/preference/AmigoPreferenceScreen$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lamigo/preference/AmigoPreferenceScreen$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 278
    new-array v0, p1, [Lamigo/preference/AmigoPreferenceScreen$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceScreen$SavedState$1;->newArray(I)[Lamigo/preference/AmigoPreferenceScreen$SavedState;

    move-result-object v0

    return-object v0
.end method
