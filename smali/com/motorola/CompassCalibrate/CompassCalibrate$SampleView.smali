.class Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
.super Landroid/view/View;
.source "CompassCalibrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CompassCalibrate/CompassCalibrate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleView"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;


# direct methods
.method public constructor <init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    .line 381
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 378
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    .line 382
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 452
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 457
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x4120

    const/4 v1, 0x0

    .line 385
    iget-object v11, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 386
    .local v11, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 387
    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 390
    .local v10, orientation:I
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$300(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mAccuracy:I
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$200(Lcom/motorola/CompassCalibrate/CompassCalibrate;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 407
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    .line 413
    .local v12, w:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 414
    .local v9, h:I
    div-int/lit8 v6, v12, 0x2

    .line 415
    .local v6, cx:I
    if-ne v10, v13, :cond_2

    div-int/lit8 v0, v9, 0x2

    const/16 v2, 0x23

    sub-int/2addr v0, v2

    move v7, v0

    .line 416
    .local v7, cy:I
    :goto_1
    if-ne v10, v4, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0xf

    sub-int/2addr v0, v2

    move v8, v0

    .line 418
    .local v8, cz:I
    :goto_2
    int-to-float v0, v6

    int-to-float v2, v7

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 419
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$000(Lcom/motorola/CompassCalibrate/CompassCalibrate;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    if-ne v10, v13, :cond_4

    .line 424
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$000(Lcom/motorola/CompassCalibrate/CompassCalibrate;)[F

    move-result-object v0

    aget v0, v0, v3

    neg-float v0, v0

    const/high16 v2, 0x42b4

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 431
    :cond_0
    :goto_3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    const/16 v0, 0xd

    sub-int v0, v8, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 434
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    const/high16 v0, 0x41a0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    const-string v0, "N"

    neg-int v2, v8

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    neg-int v3, v8

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xd

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 437
    const-string v0, "S"

    neg-int v2, v8

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x7

    div-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    neg-int v2, v8

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 440
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v2, -0x3ee0

    neg-int v3, v8

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 441
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    neg-int v2, v8

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 442
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 443
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    neg-int v0, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v0, v8, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 445
    const-string v0, "E"

    mul-int/lit8 v1, v8, 0x3

    div-int/lit8 v1, v1, 0x4

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-int/lit8 v2, v8, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 446
    const-string v0, "W"

    neg-int v1, v8

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    div-int/lit8 v2, v8, 0xc

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    return-void

    .line 395
    .end local v6           #cx:I
    .end local v7           #cy:I
    .end local v8           #cz:I
    .end local v9           #h:I
    .end local v12           #w:I
    :pswitch_0
    const/high16 v0, -0x1

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 399
    :pswitch_1
    const/16 v0, -0x100

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 404
    :pswitch_2
    const v0, -0xff0100

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 410
    :cond_1
    const v0, -0x777778

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 415
    .restart local v6       #cx:I
    .restart local v9       #h:I
    .restart local v12       #w:I
    :cond_2
    div-int/lit8 v0, v9, 0x2

    const/16 v2, 0x14

    sub-int/2addr v0, v2

    move v7, v0

    goto/16 :goto_1

    .line 416
    .restart local v7       #cy:I
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    goto/16 :goto_2

    .line 427
    .restart local v8       #cz:I
    :cond_4
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$000(Lcom/motorola/CompassCalibrate/CompassCalibrate;)[F

    move-result-object v0

    aget v0, v0, v3

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto/16 :goto_3

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
