.class final Lcom/android/ims/ImsReasonInfo$1;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsReasonInfo;
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
        "Lcom/android/ims/ImsReasonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/ImsReasonInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 348
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v0, p1}, Lcom/android/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsReasonInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/ImsReasonInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 353
    new-array v0, p1, [Lcom/android/ims/ImsReasonInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsReasonInfo$1;->newArray(I)[Lcom/android/ims/ImsReasonInfo;

    move-result-object v0

    return-object v0
.end method
