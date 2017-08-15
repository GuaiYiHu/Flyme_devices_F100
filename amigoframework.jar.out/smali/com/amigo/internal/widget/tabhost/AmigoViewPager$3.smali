.class Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;
.super Ljava/lang/Object;
.source "AmigoViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    const/4 v1, 0x0

    # invokes: Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->access$000(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;I)V

    .line 241
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;->this$0:Lcom/amigo/internal/widget/tabhost/AmigoViewPager;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 242
    return-void
.end method
