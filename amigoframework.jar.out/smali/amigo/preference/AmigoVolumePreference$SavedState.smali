.class Lamigo/preference/AmigoVolumePreference$SavedState;
.super Lamigo/preference/AmigoPreference$BaseSavedState;
.source "AmigoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lamigo/preference/AmigoVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lamigo/preference/AmigoVolumePreference$SavedState$1;

    invoke-direct {v0}, Lamigo/preference/AmigoVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lamigo/preference/AmigoVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 188
    new-instance v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;

    invoke-direct {v0}, Lamigo/preference/AmigoVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    .line 192
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    .line 193
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->originalVolume:I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    new-instance v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;

    invoke-direct {v0}, Lamigo/preference/AmigoVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    .line 209
    return-void
.end method


# virtual methods
.method getVolumeStore()Lamigo/preference/AmigoVolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lamigo/preference/AmigoPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    iget v0, v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SavedState;->mVolumeStore:Lamigo/preference/AmigoVolumePreference$VolumeStore;

    iget v0, v0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
