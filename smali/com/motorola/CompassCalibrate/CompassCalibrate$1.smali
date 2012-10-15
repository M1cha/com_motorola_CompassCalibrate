.class Lcom/motorola/CompassCalibrate/CompassCalibrate$1;
.super Ljava/lang/Object;
.source "CompassCalibrate.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CompassCalibrate/CompassCalibrate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;


# direct methods
.method constructor <init>(Lcom/motorola/CompassCalibrate/CompassCalibrate;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #setter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mAccuracy:I
    invoke-static {v0, p2}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$202(Lcom/motorola/CompassCalibrate/CompassCalibrate;I)I

    .line 98
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mAccuracy:I
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$200(Lcom/motorola/CompassCalibrate/CompassCalibrate;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->go:Z
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$300(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->completed:Z
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$400(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->instructions_shown:Z
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$500(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->comp_dialog_shown:Z
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$600(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    invoke-virtual {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->CompletedDialog()V

    .line 100
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    #setter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mValues:[F
    invoke-static {v0, v1}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$002(Lcom/motorola/CompassCalibrate/CompassCalibrate;[F)[F

    .line 91
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$100(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/motorola/CompassCalibrate/CompassCalibrate$1;->this$0:Lcom/motorola/CompassCalibrate/CompassCalibrate;

    #getter for: Lcom/motorola/CompassCalibrate/CompassCalibrate;->mView:Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;
    invoke-static {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate;->access$100(Lcom/motorola/CompassCalibrate/CompassCalibrate;)Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/CompassCalibrate/CompassCalibrate$SampleView;->invalidate()V

    .line 94
    :cond_0
    return-void
.end method
