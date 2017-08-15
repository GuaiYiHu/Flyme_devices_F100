.class Lamigo/widget/AmigoTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "AmigoTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lamigo/widget/AmigoTabWidget;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoTabWidget;I)V
    .locals 0
    .param p2, "tabIndex"    # I

    .prologue
    .line 315
    iput-object p1, p0, Lamigo/widget/AmigoTabWidget$TabClickListener;->this$0:Lamigo/widget/AmigoTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput p2, p0, Lamigo/widget/AmigoTabWidget$TabClickListener;->mTabIndex:I

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoTabWidget;ILamigo/widget/AmigoTabWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoTabWidget;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lamigo/widget/AmigoTabWidget$1;

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoTabWidget$TabClickListener;-><init>(Lamigo/widget/AmigoTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    const-string v0, "AmigoTabHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lamigo/widget/AmigoTabWidget$TabClickListener;->mTabIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lamigo/widget/AmigoTabWidget$TabClickListener;->this$0:Lamigo/widget/AmigoTabWidget;

    # getter for: Lamigo/widget/AmigoTabWidget;->mSelectionChangedListener:Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lamigo/widget/AmigoTabWidget;->access$100(Lamigo/widget/AmigoTabWidget;)Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lamigo/widget/AmigoTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 322
    return-void
.end method
