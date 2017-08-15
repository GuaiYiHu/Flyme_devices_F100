.class Lcom/amigo/internal/widget/AmigoAbsActionBarView$1;
.super Ljava/lang/Object;
.source "AmigoAbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/widget/AmigoAbsActionBarView;->postShowOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$1;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$1;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->showOverflowMenu()Z

    .line 228
    return-void
.end method
