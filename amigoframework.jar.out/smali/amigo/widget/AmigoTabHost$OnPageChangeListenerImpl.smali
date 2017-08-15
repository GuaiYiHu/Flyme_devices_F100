.class Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;
.super Ljava/lang/Object;
.source "AmigoTabHost.java"

# interfaces
.implements Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPageChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoTabHost;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoTabHost;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;->this$0:Lamigo/widget/AmigoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoTabHost;Lamigo/widget/AmigoTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoTabHost;
    .param p2, "x1"    # Lamigo/widget/AmigoTabHost$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;-><init>(Lamigo/widget/AmigoTabHost;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "percent"    # F
    .param p3, "offset"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;->this$0:Lamigo/widget/AmigoTabHost;

    # getter for: Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;
    invoke-static {v0}, Lamigo/widget/AmigoTabHost;->access$300(Lamigo/widget/AmigoTabHost;)Lamigo/widget/AmigoTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoTabWidget;->onPageScrolled(IFI)V

    .line 265
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;->this$0:Lamigo/widget/AmigoTabHost;

    # setter for: Lamigo/widget/AmigoTabHost;->mCurrentTab:I
    invoke-static {v0, p1}, Lamigo/widget/AmigoTabHost;->access$202(Lamigo/widget/AmigoTabHost;I)I

    .line 256
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;->this$0:Lamigo/widget/AmigoTabHost;

    # getter for: Lamigo/widget/AmigoTabHost;->mAmigoTabWidget:Lamigo/widget/AmigoTabWidget;
    invoke-static {v0}, Lamigo/widget/AmigoTabHost;->access$300(Lamigo/widget/AmigoTabHost;)Lamigo/widget/AmigoTabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoTabWidget;->focusCurrentTab(I)V

    .line 257
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$OnPageChangeListenerImpl;->this$0:Lamigo/widget/AmigoTabHost;

    const-string v1, "invokeOnTabChangeListener"

    invoke-static {v0, v1, v2, v2}, Lcom/amigo/internal/util/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "AmigoTabHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method
