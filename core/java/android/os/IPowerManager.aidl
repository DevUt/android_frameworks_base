/* //device/java/android/android/os/IPowerManager.aidl
**
** Copyright 2007, The Android Open Source Project
**
** Licensed under the Apache License, Version 2.0 (the "License"); 
** you may not use this file except in compliance with the License. 
** You may obtain a copy of the License at 
**
**     http://www.apache.org/licenses/LICENSE-2.0 
**
** Unless required by applicable law or agreed to in writing, software 
** distributed under the License is distributed on an "AS IS" BASIS, 
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
** See the License for the specific language governing permissions and 
** limitations under the License.
*/

package android.os;

/** @hide */
interface IPowerManager
{
    void acquireWakeLock(int flags, IBinder lock, String tag);
    void goToSleep(long time);
    void releaseWakeLock(IBinder lock, int flags);
    void userActivity(long when, boolean noChangeLights);
    void userActivityWithForce(long when, boolean noChangeLights, boolean force);
    void setPokeLock(int pokey, IBinder lock, String tag);
    int getSupportedWakeLockFlags();
    void setStayOnSetting(int val);
    long getScreenOnTime();
    void preventScreenOn(boolean prevent);
    void setScreenBrightnessOverride(int brightness);
    boolean isScreenOn();

    // sets the brightness of the backlights (screen, keyboard, button) 0-255
    void setBacklightBrightness(int brightness);
}
