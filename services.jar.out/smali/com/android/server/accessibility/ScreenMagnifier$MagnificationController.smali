.class final Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MagnificationController"
.end annotation


# static fields
.field private static final PROPERTY_NAME_MAGNIFICATION_SPEC:Ljava/lang/String; = "magnificationSpec"


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mLastRotation:I

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTransformationAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V
    .locals 6
    .param p2, "animationDuration"    # J

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1170
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1172
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1192
    const-class v2, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const-class v3, Landroid/view/MagnificationSpec;

    const-string v4, "magnificationSpec"

    invoke-static {v2, v3, v4}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v1

    .line 1195
    .local v1, "property":Landroid/util/Property;, "Landroid/util/Property<Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Landroid/view/MagnificationSpec;>;"
    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;Lcom/android/server/accessibility/ScreenMagnifier;)V

    .line 1211
    .local v0, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Landroid/view/MagnificationSpec;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/MagnificationSpec;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    .line 1213
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1214
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1216
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3200(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mLastRotation:I

    .line 1218
    return-void
.end method

.method private amigoMaxOffsetX(F)F
    .locals 6
    .param p1, "offsetX"    # F

    .prologue
    .line 1305
    move v0, p1

    .line 1306
    .local v0, "currentOffsetX":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v3, Landroid/view/MagnificationSpec;->scale:F

    .line 1307
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3400(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayWidth:F
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3400(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v1, v3, v4

    .line 1308
    .local v1, "maxOffsetX":F
    cmpl-float v3, p1, v1

    if-lez v3, :cond_0

    .line 1309
    move v0, v1

    .line 1311
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 1312
    const/4 v0, 0x0

    .line 1314
    :cond_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "amigoMaxOffsetX offsetX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return v0
.end method

.method private amigoMaxOffsetY(F)F
    .locals 6
    .param p1, "offsetY"    # F

    .prologue
    .line 1318
    move v0, p1

    .line 1319
    .local v0, "currentOffsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v3, Landroid/view/MagnificationSpec;->scale:F

    .line 1320
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3500(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mDisplayHeight:F
    invoke-static {v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3500(Lcom/android/server/accessibility/ScreenMagnifier;)F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v1, v3, v4

    .line 1321
    .local v1, "maxOffsetY":F
    cmpl-float v3, p1, v1

    if-lez v3, :cond_0

    .line 1322
    move v0, v1

    .line 1324
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 1325
    const/4 v0, 0x0

    .line 1327
    :cond_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "amigoMaxOffsetY offsetY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return v0
.end method

.method private animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "fromSpec"    # Landroid/view/MagnificationSpec;
    .param p2, "toSpec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1427
    return-void
.end method

.method private getMinOffsetX()F
    .locals 5

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1409
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1410
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v1, v2

    .line 1411
    .local v1, "viewportWidth":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " viewportWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v1

    sub-float v2, v1, v2

    return v2
.end method

.method private getMinOffsetY()F
    .locals 5

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1417
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1418
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v1, v2

    .line 1419
    .local v1, "viewportHeight":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " viewportHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v1

    sub-float v2, v1, v2

    return v2
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleOnRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1180
    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mLastRotation:I

    if-ne p1, v0, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    goto :goto_0
.end method

.method public isMagnifying()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1223
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1224
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1224
    goto :goto_0

    .line 1226
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public offsetMagnifiedRegionCenter(FF)V
    .locals 6
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    const/4 v5, 0x0

    .line 1281
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.offsetX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mCurrentMagnificationSpec.offsetX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getMinOffsetX(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, v2, p1

    .line 1283
    .local v0, "nonNormOffsetX":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1285
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->amigoMaxOffsetX(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1291
    :goto_0
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2.offsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mCurrentMagnificationSpec.offsetY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getMinOffsetY(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, v2, p2

    .line 1293
    .local v1, "nonNormOffsetY":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->amigoMaxOffsetY(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1301
    :goto_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3.offsetX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , offsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 1303
    return-void

    .line 1288
    .end local v1    # "nonNormOffsetY":F
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    goto/16 :goto_0

    .line 1298
    .restart local v1    # "nonNormOffsetY":F
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    .line 1236
    if-eqz p1, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    .line 1242
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1243
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1244
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3300(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    .line 1245
    return-void

    .line 1240
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 1438
    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1439
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending setMagnificationSpec mSmallScreen : false "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$502(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    .line 1447
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 1448
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1449
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1450
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3700(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-static {p1}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 1451
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$502(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z

    goto :goto_0
.end method

.method public setMagnifiedRegionCenter(FFZ)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 1278
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 14
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 1260
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1261
    .local v3, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v12}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1262
    iget-object v11, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1263
    .local v11, "spec":Landroid/view/MagnificationSpec;
    iget v10, v11, Landroid/view/MagnificationSpec;->scale:F

    .line 1264
    .local v10, "oldScale":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v12, v13

    div-float v8, v12, v10

    .line 1265
    .local v8, "oldCenterX":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v12, v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v12, v13

    div-float v9, v12, v10

    .line 1266
    .local v9, "oldCenterY":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v12, v12

    add-float v12, v12, p2

    div-float v4, v12, v10

    .line 1267
    .local v4, "normPivotX":F
    iget v12, v11, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v12, v12

    add-float v12, v12, p3

    div-float v5, v12, v10

    .line 1268
    .local v5, "normPivotY":F
    sub-float v12, v8, v4

    div-float v13, v10, p1

    mul-float v6, v12, v13

    .line 1269
    .local v6, "offsetX":F
    sub-float v12, v9, v5

    div-float v13, v10, p1

    mul-float v7, v12, v13

    .line 1270
    .local v7, "offsetY":F
    add-float v1, v4, v6

    .line 1271
    .local v1, "centerX":F
    add-float v2, v5, v7

    .line 1272
    .local v2, "centerY":F
    move/from16 v0, p4

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    .line 1273
    return-void
.end method

.method public setScaleAndMagnifiedRegionCenter(FFFZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManagerDisplay:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3200(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1335
    .local v0, "rotation":I
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 1367
    :cond_1
    :goto_0
    return-void

    .line 1341
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1348
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1349
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTransformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1355
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->updateMagnificationSpec(FFF)V

    .line 1356
    if-eqz p4, :cond_6

    .line 1357
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->animateMangificationSpec(Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    .line 1360
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1361
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 1366
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3300(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    goto :goto_0

    .line 1364
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    goto :goto_1
.end method

.method public updateMagnificationSpec(FFF)V
    .locals 9
    .param p1, "scale"    # F
    .param p2, "magnifiedCenterX"    # F
    .param p3, "magnifiedCenterY"    # F

    .prologue
    const/4 v8, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 1372
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1373
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v5, Landroid/view/MagnificationSpec;->scale:F

    .line 1374
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1375
    .local v4, "viewportWidth":I
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    mul-float v6, p2, p1

    sub-float v1, v5, v6

    .line 1377
    .local v1, "nonNormOffsetX":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1378
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1379
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v5, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1388
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1389
    .local v3, "viewportHeight":I
    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    mul-float v6, p3, p1

    sub-float v2, v5, v6

    .line 1390
    .local v2, "nonNormOffsetY":F
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mIsSmallScreenSupport:Z
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1200()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1391
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mBackAction:Z
    invoke-static {v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$3600(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1392
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p3, v5, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1402
    :goto_1
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMagnificationSpec nonNormOffsetX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , getMinOffsetX() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMagnificationSpec nonNormOffsetY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , getMinOffsetY() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMagnificationSpec offsetX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , offsetY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void

    .line 1381
    .end local v2    # "nonNormOffsetY":F
    .end local v3    # "viewportHeight":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->amigoMaxOffsetX(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetX:F

    goto/16 :goto_0

    .line 1385
    :cond_1
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetX()F

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetX:F

    goto/16 :goto_0

    .line 1394
    .restart local v2    # "nonNormOffsetY":F
    .restart local v3    # "viewportHeight":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->amigoMaxOffsetY(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetY:F

    goto/16 :goto_1

    .line 1398
    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMinOffsetY()F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Landroid/view/MagnificationSpec;->offsetY:F

    goto/16 :goto_1
.end method
