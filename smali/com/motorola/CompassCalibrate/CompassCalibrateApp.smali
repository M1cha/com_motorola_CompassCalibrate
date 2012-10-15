.class public Lcom/motorola/CompassCalibrate/CompassCalibrateApp;
.super Landroid/app/Application;
.source "CompassCalibrateApp.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompassCalibrateApp"

.field private static sMe:Lcom/motorola/CompassCalibrate/CompassCalibrateApp;


# instance fields
.field public mAnimation_closed:Landroid/graphics/drawable/AnimationDrawable;

.field public mAnimation_opened:Landroid/graphics/drawable/AnimationDrawable;

.field public mIsExamplePlayed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mIsExamplePlayed:Z

    .line 32
    sput-object p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->sMe:Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    .line 33
    return-void
.end method

.method static getInstance()Lcom/motorola/CompassCalibrate/CompassCalibrateApp;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->sMe:Lcom/motorola/CompassCalibrate/CompassCalibrateApp;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_opened:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_opened:Landroid/graphics/drawable/AnimationDrawable;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_closed:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateApp;->mAnimation_closed:Landroid/graphics/drawable/AnimationDrawable;

    .line 48
    :cond_1
    return-void
.end method
