.class public Lamigo/preference/AmigoVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "AmigoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput v0, p0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    .line 184
    iput v0, p0, Lamigo/preference/AmigoVolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
