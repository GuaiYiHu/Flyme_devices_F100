.class public Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "AmigoExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1255
    iput-wide p2, p0, Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1256
    iput-wide p4, p0, Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1257
    return-void
.end method
