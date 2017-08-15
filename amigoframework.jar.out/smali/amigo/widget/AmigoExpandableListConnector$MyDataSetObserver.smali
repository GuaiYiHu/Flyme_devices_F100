.class public Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AmigoExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoExpandableListConnector;


# direct methods
.method protected constructor <init>(Lamigo/widget/AmigoExpandableListConnector;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 995
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    # invokes: Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lamigo/widget/AmigoExpandableListConnector;->access$000(Lamigo/widget/AmigoExpandableListConnector;ZZ)V

    .line 997
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListConnector;->notifyDataSetChanged()V

    .line 998
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1002
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    # invokes: Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lamigo/widget/AmigoExpandableListConnector;->access$000(Lamigo/widget/AmigoExpandableListConnector;ZZ)V

    .line 1004
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListConnector;->notifyDataSetInvalidated()V

    .line 1005
    return-void
.end method
