.class Lamigo/widget/AmigoTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AmigoTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoTimePicker;
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
            "Lamigo/widget/AmigoTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lamigo/widget/AmigoTimePicker$SavedState$1;

    invoke-direct {v0}, Lamigo/widget/AmigoTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lamigo/widget/AmigoTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mHour:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mMinute:I

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lamigo/widget/AmigoTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lamigo/widget/AmigoTimePicker$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lamigo/widget/AmigoTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 325
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 326
    iput p2, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mHour:I

    .line 327
    iput p3, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mMinute:I

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILamigo/widget/AmigoTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lamigo/widget/AmigoTimePicker$1;

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    iget v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Lamigo/widget/AmigoTimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    return-void
.end method
