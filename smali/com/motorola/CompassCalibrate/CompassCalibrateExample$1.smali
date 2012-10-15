.class Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;
.super Ljava/lang/Object;
.source "CompassCalibrateExample.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CompassCalibrate/CompassCalibrateExample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CompassCalibrate/CompassCalibrateExample;


# direct methods
.method constructor <init>(Lcom/motorola/CompassCalibrate/CompassCalibrateExample;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrateExample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrateExample;

    iget-object v1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrateExample$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrateExample;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->access$000(Lcom/motorola/CompassCalibrate/CompassCalibrateExample;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrateExample;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 45
    return-void
.end method
