return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 80,
  height = 80,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 16,
  nextobjectid = 68,
  properties = {},
  tilesets = {
    {
      name = "tiles_spaceship",
      firstgid = 1,
      filename = "tiles/tiles_spaceship.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 16,
      image = "tiles/tiles_spaceship.png",
      imagewidth = 256,
      imageheight = 224,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 224,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "Background",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "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"
    },
    {
      type = "tilelayer",
      id = 12,
      name = "Decoratives (BG)",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtmG1uhDAMRPf+Z+jn3qK3K26FxA/QKmOPl7AvEuqKkvH4OQkJtxsNAhC4CoGPJZG35Xpfrvj9uVxfy1XV3PpVPkNH8brlFhxD4zvEippbv8jmn4zidcvsZ1FZNap8ufWrfIaO4vW+6bfO3/hb1dz6VT5DR/G6jrdY97b8q3y59at8hs5MXivzfqSlvBceab7S/xlXuWpv1yXHOzLn7vy9lffC+bPqc+icv+611a3fV4X9SM7aRESHvqsmiq57bXXoO2qi1tq9tjr0HTUJfoquq5bhJ5pD31GT8OrSDe0zNUdNIj+X7pnY4QUCEIAABCAAAQjMSEA5p86Yp8sz+9wcWeWcmot4rd6vck51VY356yKLLgQgAAEIQGAOAh1noY4YFbQVnx17qY4YFfwUnx1noY4YFfwUnx1noY4YFfwUn8qYHfXaEWPU097zs/jc8849CEAAAhCAAAQgAAEIQOCfgPJd4xnszupzlnOR4rODufJdo2r8jeSn+FSYj+amfNcYjXH0/Eh+ik+F+ZHXo/sjORxpqPdHxp/iU2Gu5vKMfgqTEZ9u/REvjmc75pfD91k0rz6/3JyvPr/c/NCHAARyBEb2YLlI1+zNGp6rK3uwHD/2YDl+zN8cP3pDAAIQgEA/AfbuOea8+3P82Lvn+LF3z/Fj/ub40RsCVyLwC1TMVwE="
    },
    {
      type = "tilelayer",
      id = 15,
      name = "Walls",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "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"
    },
    {
      type = "tilelayer",
      id = 3,
      name = "Platforms",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtnNty1DAMhnsHFGZYuAEGeEIObfchGc6US6APgzTdf/qv1iclUTbp2jMeK7biyF8Ure2kvTk7O7ug/FrkJeRLsUPTJ8lfJH+X/EtyLqX0bkQ5cixq43PJ/yS/XFC+Elu2kjVdS/4q+cdOliKZUnqRY4ONeo2nSYuOV7mRSz/bXf6zlN8k/5T8e1eXKlJ6kWNTG/UeR14jNc6WOuanfoXEMupQchvkyLFt5MJr4JeKa2DGZUqv8xsf/6Ji01r8LxXX2O8gp/S6/936HxghruGYS26D3PmNm/91fj3+8TPWKmtsfit57NrhjfQR+fuhc9RIH5fuB6UXctZU66FXgyyon6T3eKn86tYfX0P5bSUv0f+OT6duQedXZ1TS6PxKdOptnV+dUUlD+fXfjxKhclvnV+ZTa+3Pb41Qub3zK/OptXZ+NULl9s6vzKfWCn7vRPG95Ecryg9qg6P2h0Hj+iP96vrtg+SPks9Xkp+InZ49Fc9exJX0/djB4a/otqTU3njpPK9+qS/7XihyvY5nku25loOW9898jpW1DySWUWdL1mHZ6rUc6/ls/9z8pvAF6wO1cXv1S/1Z++fmx/ef5ZLNts36gG23x159ez4fs80qz81vCl+wPsDjS8le/VQfqLP2z81vCl+wPoCx5Uqvfq4frbf2R/PTPRVOU/iC9QHuPyV79VN9oM7aH83P897qEkZWSusDFfUDn6npl9qtL0fy884VtyXDqc36ADUlRa9+spNdpfXlSH4lO2zbRiqUn36jeSF57LvWqc/Hs2F9f2n81J4lf39qfXmJ/DzrScEdnvBs6IXU/5BU7vxAI18yPxv/huwXefZr8lbtt8DGpdxPtg62aZ36HK9/sV/Uumfk3a9hO0oybFw6Pxv/cmPK6UWNby381P+QWEYdSm5j+dT52fgHXrbM6Z06P/Uljn+WG45zeqfOLxfXwA1lTu/U+XEsYxncUHIby6fOLxfXwA1lTu9U+Xn2kUpr76hvoDdy47aSo+4P/GJI6dlHqn0nre8kI9anS+Y3hHnuHB1n55ejU69fEr+HYq73O4+ItXud2p2G8vN+n9Ji85Dn1xuXomLPHZ265LVZ42nL34wM4Ve3dl8j6tnZv8pxjjq/cdw7v85vHIFxZ3f/Wwc/79xB50ct84dxox9/9hz+N2TusIQ5TwvdOfi12GF11K6I9Za9zthj8BvyPpDXIFM/a2vjh/eB53JDvDni3aDyGxIz+Z5Cnvress/C/7guJ8+5Nz4kZub2sFrWYbkx1+o9/K6pM5aXuHdIpoaKHn5z742HDnyizj381OdS7xC7/7XdjDnjX5tFx9fy+h8sVl9E6v4HEuWyx79DPl7/6/Fvn6GHX49/++z0yMOPYx7LGv+mWiusZd8FJD38cvFP137eNV9OP2ItiLFGlB5+6nOp+Jezy6uv/aztt9zDLxf/cvy8+vedn/oTEsuosyXrsGz1+Pg++18u/vH4Wfbq67n3mZ/6UI9/7CG++Ys3nnn14X9TzoWwhzq03Kd1eIT/X3LYcljDMYzlQ83bGtZhOaev9VPOhXJzpKnr9f+X/AcaGZHM"
    },
    {
      type = "tilelayer",
      id = 4,
      name = "Decoratives (FG)",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtmntu2zAMxrvnf90Vpr16jQW98J5ddpEuPU4/YibAMnJqyWJsxZ8AQi9SIn82Aonx1dXT8h7dv05krFWJXr+Vn7JOja8JdnsnMtaqJCwUuX4rP2WdBOnFV/G3x3IPp/+tzPED/Hlo4FNkbOpj5B61CNS3Wnu1i4xNfYzcQ+MordW3UjuvHxlbKx+9zy36rXzbKr8Wz4BrkAAJLEtAzv8fIB8H+YQ6dxeaqgfzTZWEaD9DvgxygzpBfEkYmKLn7bbQ35kgb03bNq2OjI/pWRu210Eg8oy0jghjvNAzKvnV8SW/Om5qpfy0z7qMAPmV8aI2CZAACZDAaQLXmL4z4rVl/gXk5SCvUFubb+h/H+QHal+es7f6OV07P7Ut64ho8f5LvL5YBtbW6/n+Owz8MZKbf43BN4O8RW1tfqL/a5DfqH0R3VP2Vj+na+enthMURbT4/fc6YWrLQPxgGSfAfMM4G86QAAmQAAmQwLkJ1Hy/dm4f17xfgnNyNrQiYyxlBHaDes05cey/Vf+NqvbH9Ms8vhzthFBy/63ad9q2x/Qvh0h5JDtjUvIOi26JvtmGzRkEDrB97vtTyYnYHEku71OSNyl1V328h2GP3+/anI/kSnJ5n8i8Se/8pr4vUe8H+U19Aqf1op7P6V3PN3vp8Z2PJHciARIggX4I5O7S1nveuS2N43bCkL97W609OiIJ4vVkjKWMgN61tS6zpnYPBORO7r9/8Hf5yHt7LSPrYy7XoOtG+56wkf/+Qcb0t0h/jzC0qpLgjfqYyzWos6K3RPm6xKYr2JP3w7qHcICZ5CjJj/zqCMyz4vs3j9+S1nJGGDsDLelXL3snODp2BuolBvoZT+AOW4j487qMRZ/T46OL30G/ofbndRmP/G+wNLLc76k++9K1tqifELT/PdW72hZ52Jin3At31sC0mccyMNgkARIgARIgARIggQACcg/Yyn1P838tMeo3oWu/77WIOYJfC796WYP85j0p8pvHj9YkQALHBDTvKXXuP6Zji/+5cK9r1/G5cp9Pz63Z65jmvKX2OdGxnLeMe127jrfz56scK2uja6menXsEXQXW1A=="
    },
    {
      type = "tilelayer",
      id = 6,
      name = "Foreground",
      x = 0,
      y = 0,
      width = 80,
      height = 80,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtnOtOBCEMRvclvUSNjpfV+P4vYDFLUtmW2QgMHT2TNIOAbTn9w7dbPRx4IAABCEAAAhCAAAQgAAEIQAACEIAABCAAAQhAAAIQgMDfJnAlx7sWu3HstvH4a/513NZYKdUyXg+fNQSPsngndq/s4TRO7xexlsfyPypWylPH65H/2tlTvCexxbBnmevBz/OvY/aIJel+88vxevlMfr3nVRbenMUPmW/lV/Ovw/aIlfzpeL186jzL8VEm3svJ08+flTXnV86ma/715h6xkj8dr5dPnSdjCEAAAhCAAAQgAAEIQAACEIAABCAAAQhAAAIQgAAEIAABCEAgBoGyN6J370WMU47LQvdG6B6MNG79nn1c1nE8e70eW/RJxKHw+0x0b4T2skWfhI6317HujdBnoE9C02AMAQhAAAIQ8AnUtETWFaN7r/3s4q/UtETSE1v0XnuUvNpGqqenJRY5VLKZmsKq7cx6Co6zx9MSeeNMTWHVdmY9MxP99rRE3jNTU1i1nVnPzGQvb6u2M+u5F27kCQEIQAAC/4OApxOy/tPvSNohSnUsnVB+rzRbC0ZhZeVh6YRFNpYWTTtYZ5kxZ+kEKw+0g0Xl59/a2juYhQAEIDCOwCV3MO5ePv+1O1i0z239k8xZWbuDcfeq1yXfwbz+Me5edX75s9pL/4fLF5iiZ60="
    },
    {
      type = "objectgroup",
      id = 9,
      name = "Environment",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 32,
          height = 336,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 368,
          width = 736,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 544,
          width = 624,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 576,
          width = 32,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 368,
          width = 384,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 800,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 800,
          width = 32,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 912,
          width = 176,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 624,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 32,
          width = 32,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 592,
          y = 160,
          width = 320,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 32,
          width = 32,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 880,
          y = 0,
          width = 400,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1248,
          y = 32,
          width = 32,
          height = 336,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 400,
          width = 32,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 592,
          width = 224,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 624,
          width = 32,
          height = 176,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 800,
          width = 224,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 624,
          y = 736,
          width = 272,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1072,
          y = 400,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1072,
          y = 496,
          width = 208,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1248,
          y = 528,
          width = 32,
          height = 752,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 1248,
          width = 576,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 1136,
          width = 32,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1136,
          width = 304,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 960,
          width = 32,
          height = 176,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 960,
          width = 240,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 576,
          width = 32,
          height = 384,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 912,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 976,
          width = 288,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 1264,
          width = 128,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
      name = "MovingPlatform",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 1248,
          width = 128,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["area"] = "spaceship"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "Units",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 52,
          name = "Doctor",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 288,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "Doctor",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 720,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "Doctor",
          type = "",
          shape = "rectangle",
          x = 800,
          y = 1168,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "Doctor",
          type = "",
          shape = "rectangle",
          x = 960,
          y = 288,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "Events",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["Enabled"] = true
      },
      objects = {
        {
          id = 56,
          name = "PlayerEnter",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 288,
          width = 80,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "Move",
          type = "",
          shape = "rectangle",
          x = 1120,
          y = 1232,
          width = 128,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["Goal.x"] = 1184,
            ["Goal.y"] = 808,
            ["Target"] = 57,
            ["replay"] = false
          }
        },
        {
          id = 64,
          name = "Move",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 736,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Goal.x"] = 1184,
            ["Goal.y"] = 808,
            ["Target"] = 57,
            ["replay"] = false
          }
        }
      }
    }
  }
}
