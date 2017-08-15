.class Lamigo/widget/AmigoFastScroller$1;
.super Ljava/lang/Object;
.source "AmigoFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoFastScroller;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoFastScroller;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lamigo/widget/AmigoFastScroller$1;->this$0:Lamigo/widget/AmigoFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lamigo/widget/AmigoFastScroller$1;->this$0:Lamigo/widget/AmigoFastScroller;

    const/4 v1, 0x0

    # invokes: Lamigo/widget/AmigoFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoFastScroller;->access$000(Lamigo/widget/AmigoFastScroller;I)V

    .line 231
    return-void
.end method
