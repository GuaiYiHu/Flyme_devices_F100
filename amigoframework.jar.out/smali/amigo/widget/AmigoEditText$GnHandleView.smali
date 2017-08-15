.class abstract Lamigo/widget/AmigoEditText$GnHandleView;
.super Landroid/view/View;
.source "AmigoEditText.java"

# interfaces
.implements Lamigo/widget/AmigoEditText$GnEditTextPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GnHandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field protected mHotspotY:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1078
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    .line 1079
    iget-object v1, p1, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1069
    const/4 v1, -0x1

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffset:I

    .line 1072
    iput-boolean v6, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionHasChanged:Z

    .line 1073
    new-array v1, v2, [J

    iput-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetsTimes:[J

    .line 1074
    new-array v1, v2, [I

    iput-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsets:[I

    .line 1075
    iput v5, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    .line 1076
    iput v5, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mNumberPreviousOffsets:I

    .line 1080
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p1, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 1083
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1085
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 1086
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1089
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1091
    iput-object p2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 1092
    iput-object p3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 1094
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->updateDrawable()V

    .line 1096
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1097
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchOffsetY:F

    .line 1098
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIdealVerticalOffset:F

    .line 1099
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 1119
    iget v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    .line 1120
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsets:[I

    iget v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 1121
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1122
    iget v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mNumberPreviousOffsets:I

    .line 1123
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1127
    .local v4, "now":J
    const/4 v0, 0x0

    .line 1128
    .local v0, "i":I
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    .line 1129
    .local v2, "index":I
    iget v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1131
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 1133
    add-int/lit8 v0, v0, 0x1

    .line 1134
    iget v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 1137
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 1139
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lamigo/widget/AmigoEditText$GnHandleView;->positionAtCursorOffset(IZ)V

    .line 1141
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, 0x1

    .line 1187
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->isHandleInParent()Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1114
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mNumberPreviousOffsets:I

    .line 1115
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText$GnHandleView;->addPositionToTouchUpFilter(I)V

    .line 1116
    return-void
.end method


# virtual methods
.method public abstract computeHandlePositionY(I)F
.end method

.method public abstract computePointPositionY(FFF)F
.end method

.method protected dismiss()V
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    .line 1169
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1170
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->onDetached()V

    .line 1171
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method protected abstract getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1174
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->dismiss()V

    .line 1175
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getGnPositionListener()Lamigo/widget/AmigoEditText$GnPositionListener;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$300(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnPositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoEditText$GnPositionListener;->removeSubscriber(Lamigo/widget/AmigoEditText$GnEditTextPositionListener;)V

    .line 1176
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 1191
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    return v0
.end method

.method public abstract isHandleInParent()Z
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public abstract isStartHandle()Z
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1363
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 1281
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1283
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1284
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 1360
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoEditText$GnHandleView;->setMeasuredDimension(II)V

    .line 1149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1356
    :goto_0
    return v11

    .line 1292
    :pswitch_0
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, Lamigo/widget/AmigoEditText$GnHandleView;->startTouchUpFilter(I)V

    .line 1293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetX:F

    .line 1294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    .line 1296
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getGnPositionListener()Lamigo/widget/AmigoEditText$GnPositionListener;
    invoke-static {v8}, Lamigo/widget/AmigoEditText;->access$300(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnPositionListener;

    move-result-object v4

    .line 1297
    .local v4, "positionListener":Lamigo/widget/AmigoEditText$GnPositionListener;
    invoke-virtual {v4}, Lamigo/widget/AmigoEditText$GnPositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentX:I

    .line 1298
    invoke-virtual {v4}, Lamigo/widget/AmigoEditText$GnPositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    .line 1299
    iput-boolean v11, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    .line 1301
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->hideEditToolbar()V
    invoke-static {v8}, Lamigo/widget/AmigoEditText;->access$400(Lamigo/widget/AmigoEditText;)V

    goto :goto_0

    .line 1307
    .end local v4    # "positionListener":Lamigo/widget/AmigoEditText$GnPositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 1308
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 1311
    .local v7, "rawY":F
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 1313
    .local v5, "previousVerticalOffset":F
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 1317
    .local v0, "currentVerticalOffset":F
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_0

    .line 1318
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1320
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1329
    :goto_1
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    .line 1331
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 1334
    .local v1, "newPosX":F
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchOffsetY:F

    invoke-virtual {p0, v7, v8, v9}, Lamigo/widget/AmigoEditText$GnHandleView;->computePointPositionY(FFF)F

    move-result v2

    .line 1335
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Lamigo/widget/AmigoEditText$GnHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 1323
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_0
    iget v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1325
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 1340
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "rawX":F
    .end local v7    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->filterOnTouchUp()V

    .line 1341
    iput-boolean v10, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    .line 1343
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->showEditToolbar()V
    invoke-static {v8}, Lamigo/widget/AmigoEditText;->access$500(Lamigo/widget/AmigoEditText;)V

    .line 1344
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # setter for: Lamigo/widget/AmigoEditText;->mCurOffset:I
    invoke-static {v8, v9}, Lamigo/widget/AmigoEditText;->access$602(Lamigo/widget/AmigoEditText;I)I

    goto/16 :goto_0

    .line 1349
    :pswitch_3
    iput-boolean v10, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    .line 1350
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->showEditToolbar()V
    invoke-static {v8}, Lamigo/widget/AmigoEditText;->access$500(Lamigo/widget/AmigoEditText;)V

    .line 1351
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # setter for: Lamigo/widget/AmigoEditText;->mCurOffset:I
    invoke-static {v8, v9}, Lamigo/widget/AmigoEditText;->access$602(Lamigo/widget/AmigoEditText;I)I

    goto/16 :goto_0

    .line 1289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 1208
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffset:I

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_3

    .line 1213
    :cond_2
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoEditText$GnHandleView;->updateSelection(I)V

    .line 1214
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText$GnHandleView;->addPositionToTouchUpFilter(I)V

    .line 1216
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1217
    .local v0, "line":I
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionX:I

    .line 1221
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText$GnHandleView;->computeHandlePositionY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    .line 1225
    iget v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionX:I

    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->viewportToContentHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionX:I

    .line 1226
    iget v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->viewportToContentVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    .line 1228
    iput p1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffset:I

    .line 1229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionHasChanged:Z

    .line 1232
    .end local v0    # "line":I
    :cond_3
    iget-boolean v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->hideEditToolbar()V
    invoke-static {v1}, Lamigo/widget/AmigoEditText;->access$400(Lamigo/widget/AmigoEditText;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1152
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getGnPositionListener()Lamigo/widget/AmigoEditText$GnPositionListener;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$300(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnPositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lamigo/widget/AmigoEditText$GnPositionListener;->addSubscriber(Lamigo/widget/AmigoEditText$GnEditTextPositionListener;Z)V

    .line 1161
    const/4 v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPreviousOffset:I

    .line 1162
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoEditText$GnHandleView;->positionAtCursorOffset(IZ)V

    .line 1163
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v1

    iput v1, v0, Lamigo/widget/AmigoEditText;->mStart:I

    .line 1164
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v1

    iput v1, v0, Lamigo/widget/AmigoEditText;->mEnd:I

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 1102
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1103
    .local v1, "offset":I
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1104
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1105
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lamigo/widget/AmigoEditText$GnHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mHotspotX:I

    .line 1106
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Lamigo/widget/AmigoEditText$GnHandleView;->getHotspotY(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mHotspotY:I

    .line 1107
    return-void

    .line 1104
    :cond_0
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1241
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Lamigo/widget/AmigoEditText$GnHandleView;->positionAtCursorOffset(IZ)V

    .line 1242
    if-nez p3, :cond_0

    iget-boolean v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 1243
    :cond_0
    iget-boolean v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 1245
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 1247
    :cond_1
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetX:F

    .line 1249
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mTouchToWindowOffsetY:F

    .line 1251
    iput p1, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentX:I

    .line 1252
    iput p2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mLastParentY:I

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->onHandleMoved()V

    .line 1258
    :cond_3
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1260
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 1261
    .local v0, "positionX":I
    iget v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 1262
    .local v1, "positionY":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1263
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1274
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mPositionHasChanged:Z

    .line 1276
    :cond_5
    return-void

    .line 1265
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1269
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1270
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnHandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
