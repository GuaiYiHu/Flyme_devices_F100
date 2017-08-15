.class Lamigo/preference/AmigoGenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "AmigoGenericInflater.java"

# interfaces
.implements Lamigo/preference/AmigoGenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoGenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lamigo/preference/AmigoGenericInflater$Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Lamigo/preference/AmigoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Lamigo/preference/AmigoGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lamigo/preference/AmigoGenericInflater$Factory;Lamigo/preference/AmigoGenericInflater$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;",
            "Lamigo/preference/AmigoGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lamigo/preference/AmigoGenericInflater$FactoryMerger;, "Lamigo/preference/AmigoGenericInflater$FactoryMerger<TT;>;"
    .local p1, "f1":Lamigo/preference/AmigoGenericInflater$Factory;, "Lamigo/preference/AmigoGenericInflater$Factory<TT;>;"
    .local p2, "f2":Lamigo/preference/AmigoGenericInflater$Factory;, "Lamigo/preference/AmigoGenericInflater$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lamigo/preference/AmigoGenericInflater$FactoryMerger;->mF1:Lamigo/preference/AmigoGenericInflater$Factory;

    .line 63
    iput-object p2, p0, Lamigo/preference/AmigoGenericInflater$FactoryMerger;->mF2:Lamigo/preference/AmigoGenericInflater$Factory;

    .line 64
    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lamigo/preference/AmigoGenericInflater$FactoryMerger;, "Lamigo/preference/AmigoGenericInflater$FactoryMerger<TT;>;"
    iget-object v1, p0, Lamigo/preference/AmigoGenericInflater$FactoryMerger;->mF1:Lamigo/preference/AmigoGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lamigo/preference/AmigoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "v":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 69
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v1, p0, Lamigo/preference/AmigoGenericInflater$FactoryMerger;->mF2:Lamigo/preference/AmigoGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lamigo/preference/AmigoGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
