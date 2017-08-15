.class public final Lamigo/preference/AmigoPreferenceActivity$Header;
.super Ljava/lang/Object;
.source "AmigoPreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lamigo/preference/AmigoPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public breadCrumbShortTitleRes:I

.field public breadCrumbTitle:Ljava/lang/CharSequence;

.field public breadCrumbTitleRes:I

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lamigo/preference/AmigoPreferenceActivity$Header$1;

    invoke-direct {v0}, Lamigo/preference/AmigoPreferenceActivity$Header$1;-><init>()V

    sput-object v0, Lamigo/preference/AmigoPreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    .line 380
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    .line 479
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 480
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 425
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 426
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 412
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 413
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 400
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_0

    .line 401
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 388
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    .line 462
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summaryRes:I

    .line 464
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 466
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 468
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->iconRes:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 475
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 476
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 438
    iget-wide v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 439
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 441
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 443
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 445
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 447
    iget v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 450
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 456
    :goto_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 457
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
