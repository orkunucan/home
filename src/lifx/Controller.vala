/*
* Copyright (c) 2019 Manexim (https://github.com/manexim)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Marius Meisenzahl <mariusmeisenzahl@gmail.com>
*/

public class Lifx.Controller : Controllers.DeviceController {
    private Lifx.Service service;

    public Controller (Models.Device device) {
        Object (
            device : device
        );

        service = Lifx.Service.instance;
    }

    public override void switch_brightness (uint16 brightness) {
        var lamp = device as Lifx.Lamp;
        service.set_color (lamp, lamp.hue, lamp.saturation, brightness, lamp.color_temperature, 0);

        lamp.brightness = brightness;
    }

    public override void switch_power (bool on) {
        service.set_power (device as Lifx.Lamp, on ? 65535 : 0);

        _device.power = on ? Types.Power.ON : Types.Power.OFF;
    }
}
