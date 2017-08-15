.class Lamigo/widget/AmigoDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AmigoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoDatePicker;
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
            "Lamigo/widget/AmigoDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 881
    new-instance v0, Lamigo/widget/AmigoDatePicker$SavedState$1;

    invoke-direct {v0}, Lamigo/widget/AmigoDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lamigo/widget/AmigoDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mYear:I

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mMonth:I

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mDay:I

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lamigo/widget/AmigoDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lamigo/widget/AmigoDatePicker$1;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lamigo/widget/AmigoDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 856
    iput p2, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mYear:I

    .line 857
    iput p3, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mMonth:I

    .line 858
    iput p4, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mDay:I

    .line 859
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILamigo/widget/AmigoDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lamigo/widget/AmigoDatePicker$1;

    .prologue
    .line 843
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lamigo/widget/AmigoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker$SavedState;

    .prologue
    .line 843
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lamigo/widget/AmigoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker$SavedState;

    .prologue
    .line 843
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lamigo/widget/AmigoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoDatePicker$SavedState;

    .prologue
    .line 843
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 873
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 874
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    iget v0, p0, Lamigo/widget/AmigoDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    return-void
.end method
