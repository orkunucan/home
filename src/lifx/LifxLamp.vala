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

namespace Lifx {
    public class LifxLamp : Lamp {
        public uint16 port {
            get {
                if (!this._obj.has_member ("port")) {
                    this.port = 56700;
                }

                return (uint16) this._obj.get_int_member ("port");
            }
            set {
                this._obj.set_int_member ("port", value);
            }
        }

        public uint16 hue {
            get {
                return (uint16) this._obj.get_int_member ("hue");
            }
            set {
                this._obj.set_int_member ("hue", value);
            }
        }

        public uint16 saturation {
            get {
                return (uint16) this._obj.get_int_member ("saturation");
            }
            set {
                this._obj.set_int_member ("saturation", value);
            }
        }

        public uint16 brightness {
            get {
                return (uint16) this._obj.get_int_member ("brightness");
            }
            set {
                this._obj.set_int_member ("brightness", value);
            }
        }

        public uint16 kelvin {
            get {
                return (uint16) this._obj.get_int_member ("kelvin");
            }
            set {
                this._obj.set_int_member ("kelvin", value);
            }
        }

        public bool supports_infrared {
            get {
                if (!this._obj.has_member ("supportsInfrared")) {
                    this.supports_infrared = false;
                }

                return this._obj.get_boolean_member ("supportsInfrared");
            }
            set {
                this._obj.set_boolean_member ("supportsInfrared", value);
            }
        }

        public bool supports_multizone {
            get {
                if (!this._obj.has_member ("supportsMultizone")) {
                    this.supports_multizone = false;
                }

                return this._obj.get_boolean_member ("supportsMultizone");
            }
            set {
                this._obj.set_boolean_member ("supportsMultizone", value);
            }
        }
    }
}
