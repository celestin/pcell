/*  TYLEE PCELL
    Copyright (C) 2013  Tao-Yi Lee (tylee@ieee.org)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/


strCellName="base_oct_half";	

pcDefinePCell(
list(ddGetObj(strLibName),strCellName, "layout"),
(
	(OD 	"float" 200.0)  ; Inductor total width
	(W	"float" 5.0)	; Line width
	(LOP "float"	0.0) 
	(ROP "float"	0.0) 
	(bCons "boolean"	nil) 
	(MET "int"	9) 
)
let((m_base_oct_quad),
	m_base_oct_quad = dbOpenCellViewByType(pcCellView~>lib "base_oct_quad" "layout" )
		dbCreateParamInst(pcCellView m_base_oct_quad nil (-OD/2):0 "R0" 1
        list(
	        list("OD" "float" OD)
    	    list("W" "float" W)
	        list("OP" "float" LOP)
    	    list("MET" "int" MET)
    	    list("bCons" "boolean" bCons)
	    ))

		dbCreateParamInst(pcCellView m_base_oct_quad nil (OD/2):0 "MY" 1
        list(
            list("OD" "float" OD)
            list("W" "float" W)
            list("OP" "float" ROP)
            list("MET" "int" MET)
    	    list("bCons" "boolean" bCons)
        ))
)/*end of let*/
)/*end of pcDefinePCell*/

