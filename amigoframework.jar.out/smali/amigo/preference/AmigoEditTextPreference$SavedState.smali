.class Lamigo/preference/AmigoEditTextPreference$SavedState;
.super Lamigo/preference/AmigoPreference$BaseSavedState;
.source "AmigoEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoEditTextPreference;
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
            "Lamigo/preference/AmigoEditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lamigo/preference/AmigoEditTextPreference$SavedState$1;

    invoke-direct {v0}, Lamigo/preference/AmigoEditTextPreference$SavedState$1;-><init>()V

    sput-object v0, Lamigo/preference/AmigoEditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoEditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 240
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lamigo/preference/AmigoPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return-void
.end method
