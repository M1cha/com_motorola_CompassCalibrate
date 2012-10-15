.class public Lcom/motorola/CompassCalibrate/CompassCalibrateExample;
.super Landroid/app/Activity;
.source "CompassCalibrateExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final START_DELAY:J = 0x3e8L

.field protected static final TAG:Ljava/lang/String; = "CompassCalibrateExample"


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCancelButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;

    invoke-direct {v0, p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;-><init>(Lcom/motorola/CompassCalibrate/CompassCalibrateExample;)V

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CompassCalibrate/CompassCalibrateExample;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 94
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mStartButton:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mCancelButton:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mImageView:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 108
    .local v0, mlidKeyboardAccessibility:I
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_closed:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mImageView:Landroid/view/View;

    iget-object v2, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mImageView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_opened:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mCancelButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->setResult(I)V

    .line 80
    invoke-static {}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    move-result-object v0

    iput-boolean v1, v0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mIsExamplePlayed:Z

    .line 81
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 82
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mStartButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 85
    invoke-static {}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    move-result-object v0

    iput-boolean v1, v0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mIsExamplePlayed:Z

    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->setResult(I)V

    .line 87
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 88
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 54
    :cond_0
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->initViews()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 124
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 128
    :cond_0
    return-void
.end method
