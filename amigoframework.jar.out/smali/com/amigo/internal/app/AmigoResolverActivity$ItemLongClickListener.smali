.class Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;
.super Ljava/lang/Object;
.source "AmigoResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/app/AmigoResolverActivity;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoResolverActivity;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    .line 775
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$000(Lcom/amigo/internal/app/AmigoResolverActivity;)Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 776
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v1, v0}, Lcom/amigo/internal/app/AmigoResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 777
    const/4 v1, 0x1

    return v1
.end method
