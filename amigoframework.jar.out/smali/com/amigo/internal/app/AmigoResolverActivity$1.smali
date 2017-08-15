.class Lcom/amigo/internal/app/AmigoResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AmigoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/app/AmigoResolverActivity;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoResolverActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$1;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$1;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$000(Lcom/amigo/internal/app/AmigoResolverActivity;)Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 97
    return-void
.end method
