.class Lamigo/widget/AmigoTabHost$1;
.super Ljava/lang/Object;
.source "AmigoTabHost.java"

# interfaces
.implements Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoTabHost;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoTabHost;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lamigo/widget/AmigoTabHost$1;->this$0:Lamigo/widget/AmigoTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 1
    .param p1, "tabIndex"    # I
    .param p2, "clicked"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lamigo/widget/AmigoTabHost$1;->this$0:Lamigo/widget/AmigoTabHost;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoTabHost;->setCurrentTab(I)V

    .line 99
    return-void
.end method
